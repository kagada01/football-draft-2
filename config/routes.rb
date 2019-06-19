Rails.application.routes.draw do
  get 'my_team/index'
  resources :players, only: [:index, :show]
  resources :my_team, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
