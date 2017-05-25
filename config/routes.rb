Rails.application.routes.draw do


  root 'application#index'
  resources :attractions
  resources :users, except: [:delete, :destory]
  resources :rides, only: [:new, :create]

  # resources :sessions, only: [:new, :create, :show, :delete, :destroy]
  get '/signin', to: "sessions#new"
  post '/signin', to: 'sessions#create'
  delete "/signout", to: "sessions#destroy", as: :signout



end
