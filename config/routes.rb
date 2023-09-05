Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :hospital_list
  resources :users
  post '/auth/login', to: 'authentication#login'
  resources :user, only: [:index, :create, :update, :show, :destory]
  # Defines the root path route ("/")
  # root "articles#index"
end
