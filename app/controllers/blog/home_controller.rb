class Blog::HomeController < ApplicationController

	layout "blog"
	
	before_action :GetArticles, only: [:index]
	
	def index
	end

	private 
	def GetArticles
		@articles = Content.articles.categories.tags.page(params[:page]).per(2)
	end
end
