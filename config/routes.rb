Rails.application.routes.draw do
  resources :event_options
  resources :events

  root 'events#home'

     get '/query_options', to: 'events#query_options', as: :query_options

end
