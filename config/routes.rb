Rails3BootstrapDeviseCancan::Application.routes.draw do
  

 

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :catagories

  resources :products

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end