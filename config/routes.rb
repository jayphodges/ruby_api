Rails.application.routes.draw do
  resources :states
  namespace :api do
    namespace :v1 do
      get '/name/:name', to: 'names#show'
      get '/name/year/:year', to: 'names#index'
      get '/year/:year', to: 'years#show'
    end
  end
end
