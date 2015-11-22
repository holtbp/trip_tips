Rails.application.routes.draw do
  resources :cities
  resources :sights

  resources :users

  resources :getaways do
    resources :stops do
      resources :adventures do

      end
    end
  end

  root 'application#index'
  post '/login' => 'application#login'
  get '/logout' => 'application#logout'
end
