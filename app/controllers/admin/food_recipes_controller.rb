class Admin::FoodRecipesController < ApplicationController
	layout 'admin'
	before_action :find_recipe, only: [:show, :edit, :update, :destroy]
	def index
		@recipes = FoodRecipe.all
	end
	def new
		@recipe = FoodRecipe.new
	end
	def create
		uploaded_io = params[:food_recipe][:image]
		File.open(Rails.root.join('public','uploads',uploaded_io.original_filename), "wb") do |file|
			file.write(uploaded_io.read)
		end
		@recipe = FoodRecipe.new(recipe_params)
		@recipe.image = uploaded_io.original_filename
		if @recipe.save
			redirect_to admin_food_recipes_path
		end
	end
	def edit
	end
	def update
		if @recipe.update(recipe_params) then
			redirect_to admin_food_recipe_path(@recipe)
		end
	end
	def destroy
		@recipe.destroy
		redirect_to admin_food_recipes_path
	end
	def show
	end
	private
	def recipe_params
		params.require(:food_recipe).permit(:name, :origin, :preparation_time, :description, :method, :number_of_persons, :image, :category_id, :ingredients)
	end
	def find_recipe
		@recipe = FoodRecipe.find(params[:id])
	end
end
