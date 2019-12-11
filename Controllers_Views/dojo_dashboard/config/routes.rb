Rails.application.routes.draw do
  root "dojos#dojos"
  get "dojos" => "dojos#dojos"
  get "dojos/new" => "dojos#new"
  post "dojos" => "dojos#create"
  patch "dojos/:id" => "dojos#update"
  get "dojos/:id" => "dojos#show"
  get "dojos/:id/edit" => "dojos#edit"
  delete "dojos/:id" => "dojos#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
