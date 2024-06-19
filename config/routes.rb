Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get 'pages/about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :wallets do
    resources :operations, only: %i[new create]
  end
  resources :operations, only: %i[edit update destroy]
  resources :holdings, only: %i[index show]
  get "profile", to: "pages#profile"
  get "render_oedit/:id", to: "operations#render_oedit", as: :render_oedit
end
