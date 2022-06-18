Rails.application.routes.draw do
  resources :style_grades
  resources :grades
  resources :styles
  resources :emergency_contacts
  resources :students
  root 'pages#index'
  get 'pages/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
