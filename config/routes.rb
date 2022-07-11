Rails.application.routes.draw do
  devise_for :users
  resources :san_phams
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "san_phams#index"
end
