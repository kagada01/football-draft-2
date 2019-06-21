Rails.application.routes.draw do
  get 'users/new'
  post 'users/new'
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout" 
  patch "/players/:id", to: "players#draft", as: "draft"
  patch "/my_teams/:id", to: "my_teams#drop", as: "drop"
  get "/my_teams/new", to: "my_teams#new", as: "new_team"
  post "/my_teams/new", to: "my_teams#create" 
  resources :players, only: [:index, :show]
  resources :my_teams, only: [:index, :new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
