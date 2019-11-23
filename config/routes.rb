Rails.application.routes.draw do
  get "/login", to: "sessions#new"
  post "/welcome", to: "sessions#create"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  # resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
