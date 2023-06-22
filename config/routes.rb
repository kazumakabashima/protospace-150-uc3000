Rails.application.routes.draw do
  devise_for :users
  root to: 'prototypes#index'

  resources :prototypes

  get 'users/:id', to: 'users#show', as: 'user'

end
