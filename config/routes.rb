Rails.application.routes.draw do
  root to: 'static_pages#home'
  devise_for :users
  
  resources :stamps
  resources :attendances
  resources :users
end