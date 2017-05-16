class CommentsController < ApplicationController
	before_action :find_comment, only: [:edit, :update, :destroy]
	def create
		@recipe = FoodRecipe.find(params[:food_recipe_id])
		@comment = @recipe.comments.new(params_comment)
		@comment.save
		respond_to do |format|
			format.html{redirect_to @recipe}
			format.js
		end
	end
	def index
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end
	private
	def find_comment
		@comment = Comment.find(params[:id])
	end

	def params_comment
		params.require(:comment).permit(:content, :food_recipe_id, :user_id)
	end
end
