ArtEventz::Application.routes.draw do

  resources :events
  resources :profiles
  resources :members

  get "static_pages/index"
  devise_for :members
  
  root 'static_pages#index'

end
