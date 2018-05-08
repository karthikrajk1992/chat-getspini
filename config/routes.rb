Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions ,only: [:create,:destroy]
   post 'sessions/signup', to: 'sessions#create'
   post 'sessions/signin', to: 'sessions#signinUser'
   get 'sessions/chat/users', to: 'sessions#getUsers'
   post 'chat/starts', to: 'chat_boxes#create'
end
