Rails.application.routes.draw do

  root to: "teachers#index"
  devise_for :users do
    resources :pages
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :teachers do
    resources :bookings
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
