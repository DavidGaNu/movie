Rails.application.routes.draw do
  devise_for :users
  get 'bienvenido/index'
  resources :articulos
  root 'bienvenido#index'
  get 'users/index'
	get 'users/current_user'
	get 'peliculas/index'
	get 'peliculas/show'
	resources :users
	resources :peliculas

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
