Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'card', to: 'pages#card'

  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    resources :documents, only: [:new, :create, :edit, :update]
    resources :reminders, only: [:new, :create, :edit, :update]
  end
  resources :documents, only: [:index, :show, :destroy]
  resources :reminders, only: [:index, :show, :destroy]
end
