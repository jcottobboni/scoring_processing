Rails.application.routes.draw do
  resources :scores
  devise_for :users
  root 'root#index'
end
