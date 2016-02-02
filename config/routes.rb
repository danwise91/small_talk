Rails.application.routes.draw do
  root "welcome#index"

  resources :themes
  post '/' => 'themes#show'
  # resources :twilio, only: [:index, :show]



  get '/twilio', to: 'twilio#index'
  post 'call' => 'twilio#call'
  post 'connect' => 'twilio#connect'
  post 'themes/new' => 'themes#show'


  get 'mission' => 'welcome#mission', as: 'mission'
  get 'request_form' => 'welcome#request_form', as: 'request_form'
  get 'careers' => 'welcome#careers', as: 'careers'
  get 'support' => 'welcome#support', as: 'support'
end
