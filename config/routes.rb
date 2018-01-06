Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  root 'landing_pages#index'
  resources :sioris
=======
  devise_scope :user do
    root :to => "devise/sessions#new"
  end
>>>>>>> master
end
