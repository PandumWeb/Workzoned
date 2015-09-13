Rails.application.routes.draw do
  resources :localisations
  devise_for :users
  resources :categories do
  resources :posts
end
  resources :posts do
    collection do
      get :search
    end
  end

  resources :dashboards
  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  root "posts#index"
end
