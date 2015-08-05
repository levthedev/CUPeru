Rails.application.routes.draw do
  root                 to: 'sessions#new'
  post 'twilio/voice', to: 'twilio#voice'
  post '/twilio/text', to: 'twilio#text'
  get '/auth/twitter', as: '/login', to: 'sessions#new'
  get '/auth/twitter/callback', to: 'sessions#create'
end
