Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :welcome]
  resources :sessions, only: [:create, :destroy]

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

end
