Rails.application.routes.draw do
  resources :users, only: %i[show edit update]
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'rooms/index'
  get 'messages/index'
  get 'messages/new'
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
