Rails.application.routes.draw do
  resources :relations
  resources :reactions
  resources :posts
  resources :phones
  resources :emails
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
