Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hills, only: [:index, :show]
  resources :climbs

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :hills, only: [ :index ]
    end
  end
end
