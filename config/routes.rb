Rails.application.routes.draw do
  mount Storytime::Engine => "/"
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
