Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'store/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "store#index"

end
