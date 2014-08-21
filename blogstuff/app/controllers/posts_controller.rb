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

	def remove
		id = params[:id]
		Post.destroy(id)

		redirect_to "/index"
	end

	def update
		@id = params[:id]

	end

	def update_done
		u_id = params[:ID]

		new_data = params[:post].permit(:name, :author, :description)

		result = Post.find_by_id(u_id)

		result.update_attributes(
			:name => new_data[:name],
			:author => new_data[:author],
			:description => new_data[:description])



		redirect_to "/index"
	end

	def single
		id = params[:id]
		@post = Post.find(id)

	end
end