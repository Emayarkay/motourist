Rails.application.routes.draw do
  get 'bookings/create'
  get 'bookings/destroy'
  get 'cars/new'
  get 'cars/create'
  get 'cars/update'
  get 'cars/edit'
  get 'cars/destroy'
  get 'cars/index'
  get 'cars/show'

  devise_for :users
  root to: "cars#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :cars

  # Defines the root path route ("/")
end
