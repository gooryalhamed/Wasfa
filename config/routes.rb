Rails.application.routes.draw do
	root 'application#home'
	get 'about', to:'application#about'
	get 'secrets', to: 'application#secrets'
  resources :users
  resources :categories
  resources :food_recipes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
