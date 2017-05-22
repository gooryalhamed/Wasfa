class UsersController < ApplicationController
	def edit	
	end
	def update
		uploaded_io = params[:user][:profile_img]
		File.open(Rails.root.join('public','uploads',uploaded_io.original_filename), "wb") do |file|
			file.write(uploaded_io.read)
		end
		current_user.update(:username=>params[:user][:username], :email=>params[:user][:email], :profile_img=>uploaded_io.original_filename)
		redirect_to edit_user_path(current_user)
	end
	private
	def user_params
		params.require(:user).permit(:username, :email, :profile_img)
	end
end