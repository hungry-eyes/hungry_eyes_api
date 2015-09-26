Rails.application.routes.draw do

  root 'home#index'
  get '/search' => 'home#search'
  get '/api/v1' => 'home#index'

end
