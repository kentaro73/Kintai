Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  root to: 'static_pages#home'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :stamps
  resources :attendances
  resources :users
end
