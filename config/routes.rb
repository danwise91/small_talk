Rails.application.routes.draw do
  root "welcome#index"

  resources :themes, only: [:index, :show]


end
