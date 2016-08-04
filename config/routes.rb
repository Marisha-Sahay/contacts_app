Rails.application.routes.draw do
  get "/", to:"pages#contacts"
  get '/contacts/new', to: 'pages#new'
  get '/contacts/:id', to: 'pages#show'
  post '/contacts/new', to: 'pages#create'
  get "/display", to: "pages#display"
  get "/contacts", to: "pages#contacts"
   get "/all_johns", to: "pages#all_johns"

  #Users routes
  get '/users/signup', to: 'users#new'
  post '/users', to: 'users#create'

  #sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
