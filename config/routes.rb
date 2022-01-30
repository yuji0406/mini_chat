Rails.application.routes.draw do
  resources :users, only: %i[show edit update index]
  resources :messages, only: %i[index new create]
  resources :rooms, only: %i[index show]
  resources :chats, only: [:create]
  resources :user_rooms, only: [:create]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  root 'homes#top'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
