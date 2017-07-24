Rails.application.routes.draw do
  post 'login', to: 'login#index', format: 'json'
end