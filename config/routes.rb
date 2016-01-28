Rails.application.routes.draw do
  root "welcome#index"

  resources :topics, only: [:index, :show]


end
