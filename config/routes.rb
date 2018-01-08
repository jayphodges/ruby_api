Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/name/:name', to: 'names#show'
      get '/year/:year', to: 'years#show'
    end
  end
end
