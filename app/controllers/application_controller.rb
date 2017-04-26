class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	layout Proc.new { |controller| controller.devise_controller? ? 'admin' : 'application' }
	def home
	end
	def about
	end
	def secrets
	end
end
