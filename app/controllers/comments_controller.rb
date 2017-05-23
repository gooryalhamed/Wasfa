class CommentsController < ApplicationController
	before_action :find_comment, only: [:edit, :update, :destroy]
	before_action :find_recipe, only: [:create,:show, :edit, :update, :destroy]
	def create
		@comment = @recipe.comments.create(params_comment)
		@recipe.update(:numof_comments=>@recipe.numof_comments+1)
		respond_to do |format|
			format.html{redirect_to @recipe}
			format.js
		end
	end
	def edit
		respond_to do |format|
			format.html{redirect_to @recipe}
			format.js
		end
	end

	def update
		@comment.update(params_comment)
		respond_to do |format|
			format.html{redirect_to @recipe}
			format.js
		end
	end

	def destroy
		@comment.destroy
		@recipe.update(:numof_comments=>@recipe.numof_comments-1)
		respond_to do |format|
			format.html{redirect_to @recipe}
			format.js
		end
	end
	private
	def find_recipe
		@recipe = FoodRecipe.find(params[:food_recipe_id])
	end
	def find_comment
		@comment = Comment.find(params[:id])
	end

	def params_comment
		params.require(:comment).permit(:content, :food_recipe_id, :user_id)
	end
end
