class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show
		id = params[:id]
		@post = Post.find(id)

	end

	def new
		@post = Post.new
	end

	def create
		new_post = params[:post].permit(:name, :author, :description)
		new_tag = params[:tag]

		my_post = Post.create(new_post)
		my_tag = Tag.find_or_create_by(name: new_tag)

		my_post.tags << my_tag

		redirect_to "/"
	end

	def edit
		post_id = params[:id]
		@post = Post.find(post_id)

	end

	def update
		u_id = params[:id]
		puts "THIS IS u_id"
		puts u_id

		new_data = params[:post].permit(:name, :author, :description)

		result = Post.find_by_id(u_id)

		result.update_attributes(
			:name => new_data[:name],
			:author => new_data[:author],
			:description => new_data[:description])



		redirect_to "/"
	end


	def destroy
		id = params[:id]
		Post.destroy(id)

		redirect_to "/"
	end
end