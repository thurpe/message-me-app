Rails.application.routes.draw do
  resources :blogs
  resources :sessions
  resources :chatroom
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'

  root to: 'chatroom#index'
end
