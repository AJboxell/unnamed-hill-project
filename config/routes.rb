Rails.application.routes.draw do
  root to: 'pages#home'
  resources :hills, only: [:index, :show]
end
