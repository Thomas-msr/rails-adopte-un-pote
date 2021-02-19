Rails.application.routes.draw do
  get 'messages/create'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  # get 'offers/index'
  # get 'offers/show'
  # get 'offers/new'
  # get 'offers/create'
  devise_for :users
  root to: 'pages#home'
  resources :offers, only: [:index, :show, :new, :create]
  resources :meetings
  resources :reviews, only: [:index, :show, :new, :create] 
  resources :messages, only: [:create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
