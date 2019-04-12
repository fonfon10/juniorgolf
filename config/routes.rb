Rails.application.routes.draw do
  resources :events
  resources :levels
  resources :genders
  resources :categories
  resources :courses
  resources :provinces
  resources :countries
  resources :tours
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
