Rails.application.routes.draw do
  devise_for :users
  get 'teachers/index'
  get 'teachers/show'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
