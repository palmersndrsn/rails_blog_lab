Rails.application.routes.draw do

  root                to: 'posts#index'

  get '/new',         to: 'posts#new'

  get '/tags',        to: 'tags#all'

  get '/index',       to: 'posts#index'

  get '/post/:id',    to: 'posts#single'

  get '/update/:id',  to: 'posts#update'

  post '/remove/:id', to: 'posts#remove'

  post '/update',     to: 'posts#update_done'

  post '/create',     to: 'posts#create'

end
