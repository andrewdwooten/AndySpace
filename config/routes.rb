Rails.application.routes.draw do
  root to: 'landing#show'

  get '/about-me', to: 'bio#index'
  resources :blog, only: ['index']
end
