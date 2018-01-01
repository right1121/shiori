Rails.application.routes.draw do
  devise_for :users
  root 'landing_pages#index'
  resources :sioris, except: :destroy
end
