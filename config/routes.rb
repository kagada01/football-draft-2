Rails.application.routes.draw do
  patch "/players/:id", to: "players#draft", as: "draft"
  post "/players/:id", to: "players#drop", as: "drop"

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get 'my_team/index', as: "my_team"
  post 'my_team/new', to: "my_team#new", as: "new_team"
  resources :players, only: [:index, :show]
  resources :my_team, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
