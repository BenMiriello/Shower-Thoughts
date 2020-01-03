Rails.application.routes.draw do

  get '/', to: "thoughts#index"
  resources :follows, only: :create
  
  resources :users,  only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
  resources :thoughts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  
  resources :follows, only: [:create]
  delete '/follows/:id(.:format)', :to => 'follows#destroy', :as => 'destroy_follow'
  
  resources :likes, only: [:create, :destroy]
  
  resources :dislikes, only: [:create, :destroy]
  
  patch "/sessions/reset", to: "sessions#reset_counter"
  
  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  
end



# get 'sessions/new'
# get 'sessions/create'
# get 'sessions/login'
# get 'sessions/welcome'

# get 'login', to: 'sessions#new'
# post 'login', to: 'sessions#create'
# get 'welcome', to: 'sessions#welcome'
# get 'authorized', to: 'sessions#page_requires_login'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html