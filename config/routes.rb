Rails.application.routes.draw do


  root to: "teachers#home"
  devise_for :users do
    resources :pages
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html



  resources :teachers do
    resources :bookings
  end

  resources :bookings

  get "dashboard/:id", to: "users#dashboard", as: "dashboard"


end
