ArtEventz::Application.routes.draw do

  resources :events
  resources :profiles
  devise_for :members, controllers: { registrations: "registrations"}
  root 'static_pages#index'
<<<<<<< HEAD
  

=======
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
>>>>>>> upstream/master
	namespace :dashboard do
	  resources :events
	  resources :profiles
	end


end