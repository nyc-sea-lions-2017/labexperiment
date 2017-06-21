Rails.application.routes.draw do
  root 'users#index'

  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#session'

  resources :users
end
