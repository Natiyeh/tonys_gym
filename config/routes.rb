Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :course_events
  resources :course_participants
  resources :courses
  resources :order_items
  resources :profiles
end
