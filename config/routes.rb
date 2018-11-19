Rails.application.routes.draw do
    
  resources :cryptotables
  devise_for :users
  get 'home/cryptotables'
  get 'home/cryptotables/new'
  get 'home/lookupcurrency'
  post "home/lookupcurrency", to: "lookupcurrency#lookupcurrency"
  get 'home/lookupcrypto'
  post "home/lookupcrypto", to: "lookupcrypto#lookupcrypto"
  get 'home/home'
  get 'welcome/faq'
  get 'welcome/about'
  root to: 'welcome#index'
end
