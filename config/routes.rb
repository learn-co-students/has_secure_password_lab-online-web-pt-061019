Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'sessions#create'
  post '/signup' => 'users#create'

  resources :users, only: [:new, :create]


  root 'welcome#home'

end
