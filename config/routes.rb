Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  
  resources :sioris do
    put :sort
  end
  
  resources :travel_groups, only: [ :create, :destroy ]
end
