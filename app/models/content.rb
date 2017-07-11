class Content < ApplicationRecord
=begin
	include PgSearch

	pg_search_scope :search_for, :against => [:title, :body],:ignoring => :accents, :using => {:tsearch => {:prefix => true, :highlight => { 
                        :highlight_all => true,
                        :start_sel => '<mark>',
                        :stop_sel => '</mark>'
                      }}}
=end
	has_and_belongs_to_many :tags, join_table: 'articles_tags'
	has_and_belongs_to_many :categories, join_table: 'articles_categories'

	scope :articles, -> {where content_type: Settings.article_type}
	scope :published, -> {where state: Settings.publish}
	scope :categories, -> {includes (:categories)}
	scope :tags, -> {includes (:tags)}
	scope :author, -> {includes (:user)}
	scope :param, -> (param) { if param.present? then articles.where("param > ?", param) else articles end}

	scope :permalink, -> (param) {where permalink: param}
	scope :searchstring, lambda { |search_string|
    	tokens = search_string.split(' ').map { |c| "%#{c.downcase}%" }
    	where('content_type = ? AND ' + (['(LOWER(body) LIKE ? OR LOWER(title) LIKE ? OR LOWER(body_seo) LIKE ?)'] * tokens.size).join(' AND '), Settings.article_type, *tokens.map { |token| [token] * 3 }.flatten)
  	}



    def self.search_with(params)
    	params ||= {}
	    if params[:q].present?
	      searchstring(params[:q])
	    end
=begin
	    if params[:published_at].present? && /(\d\d\d\d)-(\d\d)/ =~ params[:published_at]
	      scoped = scoped.published_at_like(params[:published_at])
	    end

	    if params[:user_id].present? && params[:user_id].to_i > 0
	      scoped = scoped.user_id(params[:user_id])
	    end

	    if params[:published].present?
	      scoped = scoped.published if params[:published].to_s == '1'
	      scoped = scoped.not_published if params[:published].to_s == '0'
	    end

	    scoped

	    
=end


    end

    def self.full_text_search(query)
	    if query.present?
	      search_for(query).select('*').select("ts_headline((unaccent(coalesce(\"contents\".\"body\"::text, ''))), (to_tsquery('simple', ''' ' || unaccent('#{query}') || ' ''' || ':*')), 'StartSel = <b>, StopSel = </b>, HighlightAll = true') as highlight")
=begin
		SELECT *,
       ts_headline((unaccent(coalesce("contents"."body"::text, ''))), (to_tsquery('simple', ''' ' || unaccent('test') || ' ''' || ':*')), 'StartSel = <b>, StopSel = </b>, HighlightAll = true') AS highlight
FROM "contents"
INNER JOIN
  (SELECT "contents"."id" AS pg_search_id,
          (ts_rank((to_tsvector('simple', unaccent(coalesce("contents"."title"::text, ''))) || to_tsvector('simple', unaccent(coalesce("contents"."body"::text, '')))), (to_tsquery('simple', ''' ' || unaccent('test') || ' ''' || ':*')), 0)) AS rank
   FROM "contents"
   WHERE (((to_tsvector('simple', unaccent(coalesce("contents"."title"::text, ''))) || to_tsvector('simple', unaccent(coalesce("contents"."body"::text, '')))) @@ (to_tsquery('simple', ''' ' || unaccent('test') || ' ''' || ':*'))))) AS pg_search_d1b2a59fbea7e20077af9f ON "contents"."id" = pg_search_d1b2a59fbea7e20077af9f.pg_search_id
ORDER BY pg_search_d1b2a59fbea7e20077af9f.rank DESC,
         "contents"."id" ASC
LIMIT $1
OFFSET $2
=end
	    else
	      # No query? Return all records, newest first.
	      order("created_at DESC")
	    end
    end
end
