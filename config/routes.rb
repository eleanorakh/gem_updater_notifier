Rails.application.routes.draw do
  resources :recipients, only: [:new, :create]

  post '/webhooks/rubygems'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
