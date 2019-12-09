Rails.application.routes.draw do
  root "dojos#dojos"
  get "dojos" => "dojos#dojos"
  get "dojos/new" => "dojos#new"
  post "dojos" => "dojos#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
