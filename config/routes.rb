Rails.application.routes.draw do
  get 'welcome/index'
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'users#login'
      get '/profile', to: 'users#profile'
      get '/persist', to: 'users#persist'
    end
  end
  resources :babble_likes
  resources :comments
  resources :babbles
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
