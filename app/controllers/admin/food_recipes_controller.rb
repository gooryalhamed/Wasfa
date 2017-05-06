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
		@recipe = FoodRecipe.find_or_create_by(recipe_params)
		redirect_to admin_food_recipes_path
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
		params.require(:food_recipe).permit(:name, :origin, :preparation_time, :description, :method, :number_of_persons, :profile_image, :category_id, :ingredients)
	end
	def find_recipe
		@recipe = FoodRecipe.find(params[:id])
	end
end
