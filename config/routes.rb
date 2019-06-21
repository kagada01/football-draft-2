Rails.application.routes.draw do
 
  post "/users/new", to: "users#create" 
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy", as: "logout_main"
  delete "/logout", to: "sessions#destroy", as: "logout" 
  patch "/players/:id", to: "players#draft", as: "draft"
  patch "/my_teams/:id", to: "my_teams#drop", as: "drop"
  get "/my_teams/new", to: "my_teams#new", as: "new_team"
  post "/my_teams/new", to: "my_teams#create" 
  resources :players, only: [:index, :show]
  resources :my_teams, only: [:index, :new]
  resources :users, only: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
