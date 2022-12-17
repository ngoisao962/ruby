Rails.application.routes.draw do
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  resources :demo
  get '/search', to: 'demo#search'
  get 'log-in', to: 'login#new'
  post 'log-in', to: 'login#create'
end
