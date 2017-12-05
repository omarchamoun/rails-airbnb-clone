Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :registrations, :controllers => { registrations: "registrations"}

  resources :user, only: [:edit, :update, :destroy] do
    resources :flats
  end

  resources :flats do
    resources :bookings, only: [:create, :destroy]
  end

end

