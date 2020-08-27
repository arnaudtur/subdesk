Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :users, only: [:index, :show, :update]

    resources :offers, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      resources :bookings, only: [:new, :create]
    end
    resources :bookings, only: [:index]


end
