Rails.application.routes.draw do
    
  devise_for :users
  
  get 'home/lookupcrypto'
  post "/home/lookupcrypto" => 'home/lookupcrypto'
  get 'home/home'
  get 'welcome/faq'
  get 'welcome/about'
  root to: 'welcome#index'
end
