Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  resources :outfits

  get 'myspace', to: 'pages#myspace'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'profile', to: 'pages#profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
