Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :registrations, :controllers => { registrations: "registrations",
  omniauth_callbacks: 'registrations/omniauth_callbacks' }

  resources :user, only: [:edit, :update, :destroy]
  resources :flats do
    resources :bookings, only: [:create, :destroy]
  end

end

