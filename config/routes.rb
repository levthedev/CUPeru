Rails.application.routes.draw do
  root to: "sessions#new"
  get '/login', to: "home#show"
end
