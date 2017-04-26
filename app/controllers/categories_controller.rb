class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		redirect_to categories_path
	end
	def show
	end
end