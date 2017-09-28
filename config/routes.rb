Donatable::Engine.routes.draw do
    root to: 'donatable/pages#index'

    get '/about', to: 'donatable/pages#about', as: 'about'
end
