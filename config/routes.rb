Rails.application.routes.draw do
<<<<<<< HEAD
=======
  devise_for :users
  get 'teachers/index'
  get 'teachers/show'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
>>>>>>> 3ee08cbc1b9862ee3e300df4c591b343282b189e

  root to: "teachers#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :teachers, only: %i[index show] do
    resources :bookings
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
