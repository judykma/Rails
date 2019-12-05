Rails.application.routes.draw do
  # root "users#main"
  get "" => "times#main"
end
