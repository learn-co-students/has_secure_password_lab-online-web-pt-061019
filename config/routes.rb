Rails.application.routes.draw do
  get 'users/new'

  post 'users/create'

  get 'users/show'

  post 'sessions/create'

  get '/login' => 'sessions#new'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
