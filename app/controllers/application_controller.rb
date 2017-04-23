class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home
  end
  def about
  end
  def secrets
  end
end
