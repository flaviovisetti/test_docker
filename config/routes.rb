Rails.application.routes.draw do
  root 'home#index'

  resources :companies, only: [:new, :create, :show]
end
