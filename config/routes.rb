Rails.application.routes.draw do
  get 'settings/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  # resources :pelis
  devise_for :users
  get 'bienvenido/index'
  # resources :articulos
  # get 'bienvenido/index'
  # get 'users/index'
	# get 'users/current_user'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pelis
  # devise_for :users
  get 'bienvenido/index'
  resources :articulos
  get 'bienvenido/index'
  get 'users/index'
	get 'users/current_user'
	root 'peliculas#index'
    get 'statics/about' => 'statics#about', :as => 'about'
	  get 'peliculas/show'
	resources :users
	resources :peliculas
  resources :settings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
