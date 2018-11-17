Rails.application.routes.draw do
    
  devise_for :users
  root to: 'home#home'
  get 'home/home'
  get 'welcome/faq'
  get 'welcome/about'
  root'welcome#index'
end
