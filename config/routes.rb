Donatable::Engine.routes.draw do
  root to: "static_pages#home"
  get 'about', to: 'static_pages#about'
  resources :organizations
end
