Rails.application.routes.draw do
  namespace :api do
    resources :meals, only: [:index]
    resources :bookings
  end

  get "about", to: "application#about"
  get "reservation", to: "application#reservation"
  get "menu", to: "application#menu"
  get "mybookings", to: "application#mybookings"

  get '/profile', to: 'profiles#show', as: 'profile'
  get '/profile/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/profile', to: 'profiles#update' # Add this line for the profile update route
  delete 'profile/:id', to: 'profiles#destroy', as: :delete_profile

  devise_for :users

  root "application#home"

  resources :bookings
end
