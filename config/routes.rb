Rails.application.routes.draw do
  namespace :api do
    resources :meals, only: [:index]
    resources :bookings
  end

  get "about", to: "application#about"
  get "reservation", to: "application#reservation"
  get "menu", to: "application#menu"
  get "mybookings", to: "application#mybookings"
  get 'bookings/:id/edit', to: 'bookings#edit', as: 'edit_booking'

  get '/profile', to: 'profiles#show', as: 'profile'
  get '/profile/edit', to: 'profiles#edit', as: 'edit_profile'
  patch '/profile', to: 'profiles#update'
  delete '/profile', to: 'profiles#destroy', as: 'delete_profile'

  devise_for :users

  root "application#home"

  resources :bookings, except: [:destroy]
  delete 'bookings/:id', to: 'bookings#destroy', as: :delete_booking
  match '*path', to: 'errors#render_404', via: :all

end
