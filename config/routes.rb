Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :event_options
  resources :events

  root 'events#home'

  get 'events/options', :as => 'options'
  get '/book_now', to: 'events#book_now', as: :book_now

end
