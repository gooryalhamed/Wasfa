Rails.application.routes.draw do
	root 'application#home'
	devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
	namespace :admin do
		resources :categories
		resources :food_recipes
		resources :users, only: [:index]
		root to: 'users#controlPanel'
	end
	get 'about', to:'application#about'
	get 'secrets', to: 'application#secrets'
	resources :categories, only:[:show]
	resources :food_recipes, only:[:index, :show]
	resources :users, only: [:edit, :update]
	get'/search', to:"application#search"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
