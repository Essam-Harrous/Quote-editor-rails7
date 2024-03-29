# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :quotes

  root to: 'main#index'
  get '/about-us', to: 'about#index', as: :about

  get '/sign-up', to: "registrations#new"
  post '/sign-up', to: "registrations#create" 

  get '/sign-in', to: "sessions#new"
  post '/sign-in', to: "sessions#create" 

  get '/password', to: "passwords#edit", as: :edit_password
  patch '/password', to: "passwords#update"

  get 'password/reset', to: "password_resets#new"
  post 'password/reset', to: "password_resets#create"

  get 'password/reset/edit', to: "password_resets#edit"
  patch 'password/reset/edit', to: "password_resets#update"

  delete '/logout', to: "sessions#destroy"  
end
