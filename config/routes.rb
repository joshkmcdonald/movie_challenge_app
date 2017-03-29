Rails.application.routes.draw do
  resources :actors
  resources :movies

  root to: 'pages#home'
end
