CookBook::Application.routes.draw do
  resources :recipes, :ingredients, :users, :sessions

  root to: 'recipes#index'

  get '/signup' => 'users#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  get'/signin' => 'sessions#new'
end

