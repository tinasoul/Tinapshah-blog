class PostsController < ApplicationController

	def index
		@name = "Tina"
		# @post_titles = ["Why code", "What I learned in 3 weeks"]
		# lesson 17 of http://learn.themakersquare.com/pages/rails/practicing-building-a-new-rails-app
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	@post = Post.new(params[:post])
		if @post.save
			redirect_to @post
		else
			render action: 'new'
		end    
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
	@post = Post.find(params[:id])
	@post.update_attributes(params[:post])
		if @post.save
			redirect_to @post
		else
			render action: 'edit'
		end 
	end

	def destroy
	@post = Post.find(params[:id])
	@post.destroy
	redirect_to posts_path
	end

end
