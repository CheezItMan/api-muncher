Rails.application.routes.draw do
  root to: 'recipes#index'

  get '/index' => 'recipes#index'

  get '/search' => 'recipes#search', as: 'index_recipes'

  get '/list' => 'recipes#list', as: 'list_recipes'

  get '/show/*uri' => 'recipes#show', format: false, as: 'show'


end
