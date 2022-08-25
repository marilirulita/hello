Rails.application.routes.draw do
  devise_for :users
  root 'pages#hello'
  get '/greeting', to: 'custom_pages#hello'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
