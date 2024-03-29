Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :contacts, only: [:new, :create]
  resources :outfits
  resources :users
  resources :orders

  get 'myspace',    to: 'pages#myspace'
  get 'contact',    to: 'pages#contact'
  get 'profile',    to: 'pages#profile'

  get 'gallery',    to: 'outfits#gallery'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
