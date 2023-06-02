Rails.application.routes.draw do
  namespace :api do
    resources :meals, only: [:index]
  end


  # get 'users/new'
  # get 'users/create'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  get "about", to: "application#about"
  get "reservation", to: "application#reservation"
  # get "menu", to: "application#menu"
  get '/menu', to: 'application#menu', as: 'menu'
  
  get "mybookings", to: "application#mybookings"
  get '/profile', to: 'profiles#show', as: 'profile'


  # Existing routes for your application

  root "application#home"
 devise_for :users
  # Routes for User registration and login/logout
  # get "register", to: "users#new"
  # post "register", to: "users#create"

  # get "login", to: "sessions#new"
  # post '/login', to: 'sessions#create'
  # delete "logout", to: "sessions#destroy"

  # resources :users

end
