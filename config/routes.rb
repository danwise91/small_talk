Rails.application.routes.draw do
  root "welcome#index"

  resources :themes
  post '/' => 'themes#show'
  # resources :twilio, only: [:index, :show]


  get '/twilio', to: 'twilio#index'
  post 'call' => 'twilio#call'
  post 'connect' => 'twilio#connect'
  post 'themes/new' => 'themes#show'

end
