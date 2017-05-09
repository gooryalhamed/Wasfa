class CategoriesController < ApplicationController
	def show
		cat = Category.find(params[:id])
		@catRecipes = FoodRecipe.select{|recipe|
			recipe.category_name == cat.name
		}
	end
end