Rails.application.routes.draw do
  get 'new_account/new'
  resources :chats
  resources :room_members
  resources :rooms
  resources :blocks
  resources :goods
  resources :friends
  resources :types
  resources :clubs
  resources :schools
  resources :profiles
  get 'mypage/profile'
  get 'login/login'
  post 'login/create'
  root to: 'login#login'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
