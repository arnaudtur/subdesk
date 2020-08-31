Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    resources :users, only: [:index, :show, :edit, :update]

    resources :offers, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      resources :bookings, only: [:new, :create, :edit, :update]
    end
    resources :bookings, only: [:index]

    post "bookings/:id/accepter_booking", to: "bookings#accepter_booking", as: "accepter"


end
