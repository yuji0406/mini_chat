Rails.application.routes.draw do
  get 'rooms/index'
  get 'messages/index'
  get 'messages/new'
  get 'users/show'
  get 'users/edit'
  get 'homes/top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
