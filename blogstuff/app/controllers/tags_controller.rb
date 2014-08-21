class TagsController < ApplicationController

	def all
		new_tag = params.require(:tag)
		p new_tag
		redirect_to '/index'
	end

end