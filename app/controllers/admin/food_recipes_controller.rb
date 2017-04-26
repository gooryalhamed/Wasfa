class Admin::FoodRecipesController < ApplicationController
	def index
		@food_recipes = FoodRecipes.all
		render	layout: 'admin'
	end
end
