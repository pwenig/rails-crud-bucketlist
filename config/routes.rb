Rails.application.routes.draw do

  get '/',                      to: 'wishes#index'
  get 'wishes/new',             to: 'wishes#new'
  post '/',                     to: 'wishes#create'
  get '/wishes/:id',            to: 'wishes#show'
  get '/wishes/:id/edit',        to: 'wishes#edit'
  put '/wishes/:id',            to: 'wishes#update'
  delete '/wishes/:id',         to: 'wishes#destroy'
end
