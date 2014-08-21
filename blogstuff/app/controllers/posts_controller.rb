class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new

	end

	def create
		new_post = params[:post].permit(:name, :author, :description)
		new_tag = params[:tag].permit(:name)

		my_post = Post.create(new_post)
		my_tag = Tag.find_or_create_by(name: new_tag[:name])

		my_post.tags << my_tag

		redirect_to "/index"
	end

	def single
		id = params[:id]
		@post = Post.find(id)

	end
end