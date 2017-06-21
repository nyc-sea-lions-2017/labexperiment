Rails.application.routes.draw do




  get 'comments/create'

  resources :proposals, only: [:index, :new, :create, :show]

  root 'users#index'

  resources :users

end
