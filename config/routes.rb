Rails.application.routes.draw do
    
  devise_for :admins
  resources :currencies
  resources :cryptotables
  devise_for :users
  
  get'admin/admin'
  post 'attachments' => 'file_lists#create', as: 'file_lists'
  get 'home/predictionlitecoin'
  get 'home/predictionethereum'
  get 'home/predictionbitcoin'
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