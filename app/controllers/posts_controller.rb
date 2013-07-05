class PostsController < ApplicationController

	def index
		@name = "Tina"
		# @post_titles = ["Why code", "What I learned in 3 weeks"]
		# lesson 17 of http://learn.themakersquare.com/pages/rails/practicing-building-a-new-rails-app
		@posts = Post.all
	end


end