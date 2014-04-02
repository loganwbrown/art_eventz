ArtEventz::Application.routes.draw do

  resources :events
  resources :profiles
  devise_for :members, controllers: { registrations: "registrations"}
  root 'static_pages#index'

  get "/newsletter_signup" => "static_pages#newsletter_signup"
  post "/newsletter_signup" => "static_pages#newsletter_signup"

  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/calendar' => 'static_pages#calendar'

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
