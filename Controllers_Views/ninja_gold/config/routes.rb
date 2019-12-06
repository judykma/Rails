Rails.application.routes.draw do
  root 'rpg_controller#index'
  
  post 'farm' => 'rpg_controller#farm'

  post 'cave' => 'rpg_controller#cave'

  post 'casino' => 'rpg_controller#casino'

  post 'house' => 'rpg_controller#house'

  get 'process' => 'rpg_controller#index'

  post 'reset' => 'rpg_controller#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
