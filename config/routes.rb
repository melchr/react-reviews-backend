Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :reviews, only: [:index, :create, :show] do
        resources :comments, only: [:index, :create, :destroy]
      end
    end
  end
end
