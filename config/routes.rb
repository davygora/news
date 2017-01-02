Rails.application.routes.draw do

  namespace :api, defaults:{ format: :json } do
    namespace :v1 do
      resources :articles, only: [:index, :show]
    end
  end

  resources :articles
  root 'articles#index'
end
