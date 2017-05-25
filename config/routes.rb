Rails.application.routes.draw do


  root 'application#index'
  resources :attractions
  resources :users, except: [:delete, :destory]

  # resources :sessions, only: [:new, :create, :show, :delete, :destroy]
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  post "/logout", to: "sessions#destroy", as: :logout

end
