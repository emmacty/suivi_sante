Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'card', to: 'pages#card'

  resources :patients, only: [:index, :show, :new, :create, :edit, :update, :destroy] do
    get 'my_profile', to: 'patients#my_profile', as: 'my_profile'
    resources :reminders, only: [:new, :create, :edit, :update]
    resources :bloodtests, only: [:index, :show, :new, :create, :edit, :update]
  end
  resources :documents, only: [:new, :create, :edit, :update]
  resources :documents, only: [:index, :show, :destroy]
  resources :reminders, only: [:index, :show, :destroy, :edit, :update, :new, :create]
  get 'my_bloodtests', to: 'bloodtests#my_bloodtests', as: 'my_bloodtests'
  resources :user_patients
  resources :repetition, only: [:new, :create, :edit, :update, :destroy]
  resources :articles, only: [:index, :show]
  get 'article_1', to: 'articles#article_1', as: 'article_1'
  get 'article_2', to: 'articles#article_2', as: 'article_2'
  get 'article_3', to: 'articles#article_3', as: 'article_3'
  get 'article_4', to: 'articles#article_4', as: 'article_4'
  get 'article_5', to: 'articles#article_5', as: 'article_5'
  get 'article_6', to: 'articles#article_6', as: 'article_6'
  get 'article_7', to: 'articles#article_7', as: 'article_7'
  get 'article_8', to: 'articles#article_8', as: 'article_8'
  get 'article_9', to: 'articles#article_9', as: 'article_9'
end
