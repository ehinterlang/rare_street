Rails.application.routes.draw do
  resources :settings
  get 'static_pages/home'
  get 'static_pages/help'

  resources :stocks
  resources :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
