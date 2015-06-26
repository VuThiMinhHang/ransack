Rails.application.routes.draw do
  root to: 'users#index'
  resources :users do
    collection { post :search, to: 'users#index' }
  end
end
