class UsersController < ApplicationController
	layout false
	def edit	
	end
	def update
		if current_user.update(user_params)
			redirect_to edit_user_path(current_user)
			flash[:notice] = "Your username was successfully updated"
		end
	end
	private
	def user_params
		params.require(:user).permit(:username, :email)
	end
end