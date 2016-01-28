Rails.application.routes.draw do
  root "welcome#index"
  get "/til", to: "redditscraper#scrape"
end
