ArtEventz::Application.routes.draw do
  get "static_pages/index"
  devise_for :members
  
  root 'static_pages#index'

end
