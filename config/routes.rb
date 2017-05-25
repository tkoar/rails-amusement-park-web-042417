Rails.application.routes.draw do


  root 'application#index'
  resources :attractions
  resources :users, except: [:delete, :destory]

  get '/login', to: "sessions#new"
  delete "/logout", to: "sessions#destroy", as: :logout

end
