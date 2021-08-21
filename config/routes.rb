Rails.application.routes.draw do
  resources :bookings
  devise_for :users
  root 'bookings#index'
  get "pages", to: "pages#index"
  get "mybookings", to: "bookings#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
