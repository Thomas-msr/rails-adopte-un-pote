Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers, only: [:index, :show, :new, :create]
  resources :meetings
  resources :reviews, only: [:index, :show, :new, :create]
  resources :messages, only: [:create]
  resources :likes, only: [:index, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
