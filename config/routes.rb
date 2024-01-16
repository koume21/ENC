Rails.application.routes.draw do
  post 'friend_list/index/:block_id', to: 'friend_list#create_block', as: 'block_create'
  get 'friend_list/index'
  post 'friend_list/index' => 'friend_list#search'
  get 'chat_room/chat_page'
  get 'chat_room/chat_page/:room_id', to: 'chat_room#show', as: 'chat_room'
  get 'search/index'
  post 'search/index' => 'search#search'
  get 'setting/index'
  patch 'setting/update'
  get 'mypage/profile'
  patch 'mypage/update'
  get 'friend_profile/:friend_id', to: 'friend_profile#show', as: 'friend_profile'
  get 'login/login'
  post 'login/create'
  root to: 'login#login'
  get 'new_account/new'
  post '/new_account/new' => 'new_account#create'
  mount ActionCable.server => '/cable'
  post 'do_good/:good_id' => 'do_good#create', as: 'good_do_good'
  delete 'do_good/:good_id' => 'do_good#destroy', as: 'good_un_good'
  post 'become_friend/:friend_id', to: 'become_friend#create', as: 'become_friend'
  get 'search/ranking', as: 'ranking'
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
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
