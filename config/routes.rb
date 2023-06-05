Rails.application.routes.draw do
  namespace :api do
    resources :meals, only: [:index]
  end

  get "about", to: "application#about"
  get "reservation", to: "application#reservation"
  get "menu", to: "application#menu"
  
  get "mybookings", to: "application#mybookings"
  get '/profile', to: 'profiles#show', as: 'profile'

  devise_for :users

  root "application#home"

  resources :bookings 
  # do
    # resources :times
    # resources :dates 
    # resources :number_of_people 
    # resources :special_requests 
  # end
end
