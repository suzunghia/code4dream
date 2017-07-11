class Blog::SearchController < ApplicationController
	layout "blog"

	def index
		@articles = Content.search_with(params).page(params[:page]).per(10)
	end
end