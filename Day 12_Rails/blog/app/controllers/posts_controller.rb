class PostsController < ApplicationController
	
	def index
		@posts = Post.all # Use find to find, update to update.

	end

	def show
		@post = Post.find(params[:id])

	end

	def new
		@post = Post.new

	end

	def create
		#Post.new = post.body post.title
		@post = Post.create params[:post]

		if @post.valid?
			@post.save
			redirect_to @post
		else
			render @post
		end
	end

	def edit
		@post = Post.edit

	end

	def update

	end

	def destroy

	end

end
