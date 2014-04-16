ArtEventz::Application.routes.draw do
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  get "follows/create"
  resources :events
  resources :profiles
  devise_for :members, controllers: { registrations: "registrations"}
  root 'static_pages#index'

  match "/contact" => "static_pages#contact", via: [:get, :post]

  get "/newsletter_signup" => "static_pages#newsletter_signup"
  post "/newsletter_signup" => "static_pages#newsletter_signup"
  post "/likes/:id" => 'likes#create', as: :create_like
  post "/follows/:id" => 'follows#create', as: :create_follow
  get '/about' => 'static_pages#about'
  get '/calendar' => 'static_pages#calendar'
  get '/tos' => 'static_pages#tos'
  
  namespace :dashboard do
    resources :events do
      resources :event_photos, only: ['create']
    end
    resources :profiles do
      resources :art_photos, only: ['create']
    end
    get '/index' => 'static_pages#index'
  end
end
