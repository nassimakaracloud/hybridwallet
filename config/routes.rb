Rails.application.routes.draw do
    
  resources :cryptotables
  devise_for :users
  get 'home/cryptotables'
  get 'home/cryptotables/new'
  get 'home/lookupcrypto'
  post "/home/lookupcrypto" => 'home/lookupcrypto', :as => 'home_lookupcurrency'
  get 'home/home'
  get 'welcome/faq'
  get 'welcome/about'
  root to: 'welcome#index'
end
