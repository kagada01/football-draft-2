Rails.application.routes.draw do
  get "/login", to: "sessions#new", as: "login" 
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get 'my_team/index', as: "my_team"
  resources :players, only: [:index, :show]
  resources :my_team, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
