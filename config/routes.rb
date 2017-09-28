Donatable::Engine.routes.draw do
  root to: "static_pages#home"
  get 'about', to: 'static_pages#about'
  get 'search', to: 'static_pages#search'    
  resources :organizations
end
