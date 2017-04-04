class Blog::ArticlesController < ApplicationController
	
	layout "blog"
	
	def index
		@articles = Content.articles.published.permalink(params[:id]).categories.tags
	end

	def show
		@articles = Content.articles.published.permalink(params[:permalink]).categories.tags
	end

	def category
		@connection = ActiveRecord::Base.connection
=begin
		@str_sql = "SELECT parent.name
					FROM categories node,
					     categories parent
					WHERE node.lft BETWEEN parent.lft AND parent.rgt
					        AND node.name = 'sub-cat-1-1'
					ORDER BY parent.lft" #select path of node
		@str_sql = "SELECT node.name
					FROM categories node,
						 categories parent
				    WHERE node.lft BETWEEN parent.lft AND parent.rgt
				    	  AND parent.name = 'sub-cat-3'
				    ORDER BY node.lft" #select all child node
=end
		@str_sql = "SELECT node.name, (COUNT(parent.name) - 1) AS depth
					 FROM categories node,
						  categories parent
					 WHERE node.lft BETWEEN parent.lft AND parent.rgt
					 GROUP BY node.name, node.lft
					 ORDER BY node.lft" #select with depth
		@result = @connection.execute(@str_sql)
	end
end
