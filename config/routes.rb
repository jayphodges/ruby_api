Rails.application.routes.draw do
  resources :states
  namespace :api do
    namespace :v1 do
      get '/name/:name', to: 'names#show'
      get '/year/:name', to: 'names#index'
      get '/name/year/:year', to: 'years#show'
      get '/:state/name/:name', to: 'states#index'
      get '/:state/most/:name', to: 'states#show'
    end
  end
end
