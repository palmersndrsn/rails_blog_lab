Rails.application.routes.draw do

  root to: 'posts#index'

  get '/new', to: 'posts#new'


  get '/index', to: 'posts#index'

  get '/post/:id', to: 'posts#single'

  post '/remove/:id', to: 'posts#remove'

  get '/update/:id', to: 'posts#update'

  post '/update', to: 'posts#update_done'

  post '/create', to: 'posts#create'

end
