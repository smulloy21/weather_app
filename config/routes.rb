Rails.application.routes.draw do
  resources :forcasts
  root to: 'forcasts#index'
end
