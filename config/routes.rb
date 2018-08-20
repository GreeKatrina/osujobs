Rails.application.routes.draw do
  resources :feeds
  resources :jobs
  get 'home/index'

  root 'home#index'
end
