Rails.application.routes.draw do

  get '/',                      to: 'wishes#index'
  get 'wishes/new',             to: 'wishes#new'
  post '/',                     to: 'wishes#create'
end
