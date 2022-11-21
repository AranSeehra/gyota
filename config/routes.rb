Rails.application.routes.draw do

  root to: "teachers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :teachers, only: %i[index show] do
    resources :bookings
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
