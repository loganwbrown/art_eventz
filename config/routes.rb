ArtEventz::Application.routes.draw do
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
