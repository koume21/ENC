Rails.application.routes.draw do
  
  get 'chat_room/chat_page'
  post 'chat_room/chat_page' => 'chat_room#show'
  get 'search/index'
  post 'search/index' => 'search#search'
  get 'setting/index'
  patch 'setting/update'
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
  patch 'mypage/update'
  get 'login/login'
  post 'login/create'
  root to: 'login#login'
  get 'new_account/new'
  post '/new_account/new' => 'new_account#create'
  mount ActionCable.server => '/cable'
  post 'do_good/:good_id'  ,to: 'do_good#create', as: 'good_do_good'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
