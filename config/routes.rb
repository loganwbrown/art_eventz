ArtEventz::Application.routes.draw do

  resources :events
  resources :profiles
  devise_for :members
  root 'static_pages#index'

end
