Rails.application.routes.draw do
  # root 'puppies#hello'
  get "" => "puppies#index"
  get "hello" => "puppies#hello"
  get "say/hello" => "puppies#sayHello"
  get "say/hello/joe" => "puppies#helloJoe"
  get "say/hello/michael" => "puppies#shelloMichael"
  get "times" => "puppies#times"
  get "times/restart" => "puppies#restart"

  # post "products" => "puppies#create"
  # get "products/:id" => "puppies#show"
  # get "products/:id/edit" => "puppies#edit"
  # patch "products/:id" => "puppies#update"
  # delete "products/:id" => "puppies#destroy"
end
