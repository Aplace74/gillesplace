Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  get 'legals', to: 'pages#legals', as: :legals

  resources :categories, only: [:index, :show]
  resources :products, only: [:show]
  resources :types, only: [:show]
end
