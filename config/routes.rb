Rails.application.routes.draw do
  get 'home', to: 'home#index', format: 'json'

  post 'login', to: 'login#index', format: 'json'
  post 'sign_up', to: 'user#create', format: 'json'
  post 'auth_check', to: 'login#check', format: 'json'
end