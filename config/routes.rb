Rails.application.routes.draw do
	root 'application#home'
	devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
	namespace :admin do
		resources :categories
		resources :food_recipes
	end
	get 'admin', to: 'admin#control_panel'
	get 'about', to:'application#about'
	get 'secrets', to: 'application#secrets'
	resources :users
	resources :categories, only:[:index, :show]
	resources :food_recipes, only:[:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
