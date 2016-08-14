Rails.application.routes.draw do
  resources :event_options
  resources :events

  root 'events#home'

end
