Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/studios', to: 'studios#index'
  get '/studios/:id', to: 'studios#show'
  get '/movies/:id', to: 'movies#show'
  post 'movies/:id', to: 'movie_actors#create'
end
