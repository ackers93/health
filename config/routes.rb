Rails.application.routes.draw do
  devise_for :users
  devise_for :stages
  devise_for :workouts
  root to: "stages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :stages
resources :workouts
end
