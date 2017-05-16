class FoodRecipesController < ApplicationController
	before_action :find_recipe, only: [:show, :update]
	def index	
	end
	def show
	end
	def update
		if user_signed_in? then
			if !current_user.did_like
				current_user.update(:did_like=>true)
				@recipe.update(:numof_likes=>@recipe.numof_likes+1)
			else
				current_user.update(:did_like=>false)
				@recipe.update(:numof_likes=>@recipe.numof_likes-1)
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