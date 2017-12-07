Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :registrations, :controllers => { registrations: "registrations",
  omniauth_callbacks: 'registrations/omniauth_callbacks' }

  resources :user, only: [:edit, :update, :destroy]
  resources :flats do
    resources :bookings, only: [:create, :destroy, :edit]
  end

  resources :bookings, only: [:index] do
    member do
     patch "cancel", to: "bookings#cancel"
     patch "decline", to: "bookings#decline"
     patch "approve", to: "bookings#approve"
    end
  end


end

