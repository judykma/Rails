Rails.application.routes.draw do

  post "products" => "products#create"

  root 'products#index'

  # resources :products
  get "products" => "products#index" #right side is the controller function
  get "products/new" => "products#new"
  get "products/:id" => "products#show"
  get "products/:id/edit" => "products#edit"
  patch "products/:id" => "products#update"
  delete "products/:id" => "products#destroy"
  # '/profile' will take the request to the users controller show method.
  get "profile" => "users#show"
end