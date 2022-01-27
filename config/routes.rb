Rails.application.routes.draw do
  resources :users, only: %i[show edit update]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'rooms/index'
  get 'messages/index'
  get 'messages/new'
  root 'homes#top'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
