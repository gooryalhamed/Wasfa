class Admin::UsersController < ApplicationController
	layout 'admin'
	def controlPanel
		if !current_user || current_user.try(:admin?) == false
			redirect_to root_path
		end
	end

	def settings
	end

	def myusers
		@myusers = User.select{ |u|
			!u.admin?
		}
	end
end