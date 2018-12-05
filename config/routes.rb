Rails.application.routes.draw do
    
  get 'document/index'
  get 'document/new'
  get 'document/create'
  get 'document/destroy'
  resources :currencies
  resources :cryptotables
  devise_for :users
  
  get 'home/prediction'
  get 'cryptotableexport_to_csv' => 'cryptotables#cryptotableexport_csv', as: 'cryptotableexport_csv'
  get 'export_to_csv' => 'currencies#export_csv', as: 'export_csv'
  get 'home/currencies/new'
  get 'home/currencies'
  get 'home/cryptotables'
  get 'home/cryptotables/new'
  get 'home/lookupcurrency'
  post "home/lookupcurrency", to: "lookupcurrency#lookupcurrency"
  get 'home/lookupcrypto'
  post "home/lookupcrypto", to: "lookupcrypto#lookupcrypto"
  get 'home//users/edit'
  get 'home/home'
  get 'welcome/presentation'
  get 'welcome/mission'
  get 'welcome/faq'
  get 'welcome/about'
  root to: 'welcome#index'
end
