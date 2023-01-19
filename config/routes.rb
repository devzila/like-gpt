Rails.application.routes.draw do
  namespace :workshop do
    resources :posts
    resources :authors
    resources :categories
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
