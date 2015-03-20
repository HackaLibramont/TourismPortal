Rails.application.routes.draw do

  devise_for :users
  resources :users
  namespace :api do
    resources :events, only: :index
  end
  mount Storytime::Engine => "/"
end
