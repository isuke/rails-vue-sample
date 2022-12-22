Rails.application.routes.draw do
  root 'pages#home'

  get 'home', to: 'pages#home'
  get 'user', to: 'pages#user'

  namespace :api do
    defaults format: :json do
      resources :users, only: %i[index create]
    end
  end
end
