class FoodRecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :update]
	def index	
	end
	def show
	end
	#update number of likes
	def update
		if user_signed_in? then
			if Like.where("food_recipe_id =? and user_id = ?", @recipe.id, current_user.id).first !=nil
				Like.where("food_recipe_id =? and user_id = ?", @recipe.id, current_user.id).destroy_all
				@recipe.update(:numof_likes=>@recipe.numof_likes-1)
			else
				like = Like.create(:user_id=>current_user.id,:food_recipe_id=>@recipe.id)
				@recipe.update(:numof_likes=>@recipe.numof_likes+1)
			end
			respond_to do |format|
				format.html {redirect_to @recipe}
				format.js
			end
		end
	end
	private
	def find_recipe
		@recipe = FoodRecipe.find(params[:id])	
	end
end