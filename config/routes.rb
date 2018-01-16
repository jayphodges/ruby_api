Rails.application.routes.draw do
  resources :states
  namespace :api do
    namespace :v1 do
      get '/name/:name', to: 'names#show'
      get '/year/:name', to: 'names#index'
      get '/name/year/:year', to: 'years#show'
      get '/year/:year', to: 'years#show'
    end
  end
end
