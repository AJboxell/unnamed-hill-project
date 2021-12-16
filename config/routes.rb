Rails.application.routes.draw do
  root to: 'pages#home'
  resources :hills, only: [:index, :show]

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :hills, only: [ :index ]
    end
  end
end
