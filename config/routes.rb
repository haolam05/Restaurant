Rails.application.routes.draw do
  resources :categories
  devise_scope :user do
    get "users", to: "devise/sessions#new" # Redirests signing out users back to sign-in
  end
  devise_for :users
  resources :products
  root 'pages#home'
  get 'catering', to:'pages#catering'
  get 'info'    , to: 'pages#info'
  get 'menu'    , to:'menu#index'
  get 'search'  , to:'menu#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
