Rails.application.routes.draw do
  root 'pages#home'

  get 'home', to: 'pages#home'
  get 'user', to: 'pages#user'
end
