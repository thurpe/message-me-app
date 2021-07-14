Rails.application.routes.draw do
  resources :blogs
  resources :sessions
  resources :chatroom
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'login', to: 'sessions#new'
  root to: 'chatroom#index'
end
