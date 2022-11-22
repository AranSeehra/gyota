Rails.application.routes.draw do

root to: "teachers#index"
devise_for :users
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :teachers do
    resources :bookings
  end

  resources :bookings

  get "dashboard", to: "users#dashboard", as: "dashboard"

  # Defines the root path route ("/")
  # root "articles#index"
end
