class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	layout Proc.new { |controller| 
		if controller.devise_controller?
			'admin'
		end
	}
	def home
	end
	def about
	end
	def secrets
	end
end
