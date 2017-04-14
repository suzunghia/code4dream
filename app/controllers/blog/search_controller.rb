class Blog::SearchController < ApplicationController
	layout "blog"

	def index
		@results = Content.search(params[:q])
	end
end