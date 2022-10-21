Rails.application.routes.draw do
  resources :beats do
    resources :comments
  end
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  resources :categories
  get "store/index"
  get "cart", to: "cart#show"
  post "cart/add"
  post "cart/remove"
  get "search", to: "beats#search"
  get "privacy", to: "beats#privacy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "beats#index"
end
