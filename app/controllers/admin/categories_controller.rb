class Admin::CategoriesController < ApplicationController
	before_action :find_category, only: [:show, :edit, :update, :destroy]
	def index
		@categories = Category.all
		render layout: 'admin'
	end
	def new
		@category = Category.new
	end
	def create
		@category = Category.create(category_params)
		redirect_to admin_categories_path
	end
	def edit
	end
	def update
		if @category.update(category_params) then
			redirect_to admin_categories_path
		end
	end
	def destroy
		@category.destroy
		redirect_to admin_categories_path
	end
	private
	def category_params
		params.require(:category).permit(:name)
	end
	def find_category
		@category = Category.find(params[:id])
	end
end
