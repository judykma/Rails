Rails.application.routes.draw do
  root "surveys#index"

  post "results" => "surveys#create"
  get 'results' => "surveys#results"
end