Rails.application.routes.draw do




  get 'comments/create'

  resources :proposals, only: [:index, :new, :create, :show] do
    resources :experiments
  end

  root 'proposals#index'

  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  post '/users/login', to: 'users#create_session'

  resources :users

end
