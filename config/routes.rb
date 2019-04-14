Rails.application.routes.draw do
  resources :tournaments
  resources :levels
  resources :genders
  resources :categories
  resources :courses
  resources :provinces
  resources :countries
  resources :tours

  root to: "tournaments#index"

  devise_for :users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
