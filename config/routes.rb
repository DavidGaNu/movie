Rails.application.routes.draw do
  resources :pelis
  devise_for :users
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
