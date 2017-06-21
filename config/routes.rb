Rails.application.routes.draw do




  resources :proposals, only: [:index, :new, :create, :show]

  root 'users#index'

  resources :users

end
