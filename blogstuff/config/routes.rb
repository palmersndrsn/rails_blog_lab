Rails.application.routes.draw do

  root to: 'posts#index'

  get '/new', to: 'posts#new'

  post '/create', to: 'posts#create'

  get '/index', to: 'posts#index'

  get '/post/:id', to: 'posts#single'

end
