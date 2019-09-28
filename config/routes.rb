Rails.application.routes.draw do
  root to: 'top#show'
  post '/translate', to: 'top#translate'
end
