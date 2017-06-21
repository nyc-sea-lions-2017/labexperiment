Rails.application.routes.draw do
  root 'users#index'

  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  post '/users/login', to: 'users#create_session'

  resources :users
end
