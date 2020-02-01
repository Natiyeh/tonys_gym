Rails.application.routes.draw do
  devise_for :users
  resources :course_events
  resources :course_participants
  resources :courses
  resources :order_items
  resources :profiles
  resources :products
  resources :orders
  resources :roles
  resources :users
  resources :user_memberships
  root to: 'pages#home'
end
