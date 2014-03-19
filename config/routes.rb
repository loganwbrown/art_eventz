ArtEventz::Application.routes.draw do
  resources :profile
  resources :events

  get "events/index"
  get "events/show"
  get "events/update"
  get "events/edit"
  get "events/destroy"
  get "events/create"
  get "profile/index"
  get "profile/show"
  get "profile/update"
  get "profile/edit"
  get "profile/destroy"
  get "profile/create"
  get "members/index"
  get "members/show"
  get "members/update"
  get "members/edit"
  get "members/destroy"
  get "members/create"
  get "static_pages/index"
  devise_for :members
  
  root 'static_pages#index'

end
