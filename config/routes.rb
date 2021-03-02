Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.default_url_options[:host] = 'tutweet.herokuapp.com'
  root'home#index'
  get '/tweets', to: 'tweets#index'
  
  resources :tweets 
  



end
