class Admin::FoodRecipesController < ApplicationController
	layout 'admin'
	def index
		@food_recipes = FoodRecipe.all
	end
end
