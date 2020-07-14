Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :bookings, only: %w(new create)
  end
  resources :bookings, only: %w(edit update destroy)
end
