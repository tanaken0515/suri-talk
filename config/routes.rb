Rails.application.routes.draw do
  root to: 'top#show'
  get '/translate', to: 'top#translate'
  post '/translate', to: 'top#translate'
end
