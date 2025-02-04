Rails.application.routes.draw do

  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  get '/welcome' => "users#show"

  get '/signup' => "users#new"
  

  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
