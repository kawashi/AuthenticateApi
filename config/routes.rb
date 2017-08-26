Rails.application.routes.draw do
  get 'home', to: 'home#index', format: 'json'
  get 'image_post', to: 'image_post#index', format: 'json'

  post 'image_post', to: 'image_post#create', format: 'json'
  post 'login', to: 'login#index', format: 'json'
  post 'sign_up', to: 'user#create', format: 'json'
  post 'auth_check', to: 'login#check', format: 'json'
end