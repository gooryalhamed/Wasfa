class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :authenticate_user!, if: :devise_controller?
	protect_from_forgery with: :exception
	layout Proc.new { |controller| 
		if controller.devise_controller?
			'devise'
		end
	}
	def home
	end
	def about
	end
	def secrets
	end
	def search
		@results = FoodRecipe.search(params[:search_keywords])
	end
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
	end
end
