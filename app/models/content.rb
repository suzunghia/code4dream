class Content < ApplicationRecord
	include PgSearch

	pg_search_scope :search_for, :against => [:title, :body], :using => {:tsearch => {:prefix => true}}
	
	has_and_belongs_to_many :tags, join_table: 'articles_tags'
	has_and_belongs_to_many :categories, join_table: 'articles_categories'

	scope :articles, -> {where content_type: Settings.article_type}
	scope :published, -> {where state: Settings.publish}
	scope :categories, -> {includes (:categories)}
	scope :tags, -> {includes (:tags)}
	scope :author, -> {includes (:user)}
	scope :param, -> (param) { if param.present? then articles.where("param > ?", param) else articles end}

	scope :permalink, -> (param) {where permalink: param}

	def self.search(query)
	    if query.present?
	      search_for(query)
	    else
	      # No query? Return all records, newest first.
	      order("created_at DESC")
	    end
    end
end
