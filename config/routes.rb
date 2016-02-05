Rails.application.routes.draw do
  root "welcome#index"
  resources :users
  resources :sessions
  resources :themes
  post '/' => 'themes#show'
  post 'users/edit' => 'users#edit'
  post 'users/user_id' => 'users#delete_tip'
  # resources :twilio, only: [:index, :show]

  get 'signup', to: 'users#new'
  get '/', to: 'posts#index'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete 'sessions', to: "sessions#destroy"


  get '/twilio', to: 'twilio#index'
  post 'call' => 'twilio#call'
  post 'connect' => 'twilio#connect'
  post 'themes/new' => 'themes#show'


  get 'mission' => 'welcome#mission', as: 'mission'
  get 'request_form' => 'welcome#request_form', as: 'request_form'
  get 'careers' => 'welcome#careers', as: 'careers'
  get 'support' => 'welcome#support', as: 'support'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resources :home, only: [:show]

end
