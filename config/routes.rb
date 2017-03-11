Rails.application.routes.draw do
  get 'welcome/index'
  resources :songs
  root 'welcome#index'
  get 'search', to: 'songs#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
