Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/contact'
  get 'pages/about'
  devise_for :users
  resources :course_events
  resources :course_participants
  resources :courses
  resources :order_items
  resources :products
  resources :orders
  resources :roles
  resources :users do
    resources :profiles
  end
  resources :user_memberships
  root to: 'pages#home'
end
