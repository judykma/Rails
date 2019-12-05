Rails.application.routes.draw do
  root "users#index"
  get "users" => "users#index"
  get "users/new" => "users#new"
  post "users" => "users#create"
  get "users/total" => "users#total"
  get "users/1" => "users#show", as: 'show'
  get "users/:id/edit" => "users#edit"
  post "users/:id" => "users#update"

end
