Rails.application.routes.draw do
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'
  resources :news, path: 'noticias'
  get 'noticias', to: 'news#index'
  devise_for :users
  resources :users
end
