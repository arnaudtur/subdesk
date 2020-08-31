Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :users, only: [:index, :show, :edit, :update]

    resources :offers, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      resources :bookings, only: [:new, :create, :edit, :update]
    end
    resources :bookings, only: [:index]

    resources :chatrooms, only: [:show, :new] do
      resources :messages, only: :create
    end

    post "bookings/:id/accepter_booking", to: "bookings#accepter_booking", as: "accepter"
    post "bookings/:id/accepter_discuss_booking", to: "bookings#accepter_discuss_booking", as: "accepter_discuss"
    post "bookings/:id/cancel_booking", to: "bookings#cancel_booking", as: "cancel"
    post "bookings/:id/refused_booking", to: "bookings#refused_booking", as: "refused"




end
