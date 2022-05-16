Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  devise_for :users

  resources :references
  resources :posts
  get 'pages/home'
  get 'actualites', to: 'pages#posts', as: :actualites
  get 'a_propos', to: 'pages#about', as: :about
  get 'inscription', to: 'pages#inscription', as: :inscription
  post 'inscription_create', to: 'pages#inscription_create', as: :inscription_create

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'
end
