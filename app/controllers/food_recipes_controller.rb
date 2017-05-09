class FoodRecipesController < ApplicationController
	def index	
	end
	def show
		@recipe = FoodRecipe.find(params[:id])	
	end
end