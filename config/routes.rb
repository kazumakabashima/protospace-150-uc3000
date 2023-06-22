Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'
  # resources :tweets
  get 'users/:id', to: 'users#show', as: 'user'
end
