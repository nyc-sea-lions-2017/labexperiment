Rails.application.routes.draw do


  resources :observations, only: [:new, :create, :show]



  resources :comments, only: [:create]
  resources :proposals, only: [:index, :new, :create, :show] do
    resources :experiments
  end

  resources :experiments, only: [] do
    resources :procedures
  end


  root 'proposals#index'

  get '/users/login', to: 'users#login'
  get '/users/logout', to: 'users#logout'
  post '/users/login', to: 'users#create_session'
  get '/proposals/close/:id', to: 'proposals#close'

  resources :users

end
