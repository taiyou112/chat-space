Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  root 'groups#index'
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
    namespace :api do
      resources :messages, only: :index, defaults: { format: 'json' }
    end
  end
end
=======
  get 'messages/index'

  root "messages#index"
end
>>>>>>> parent of 1aceb3b... git commit --allow-empty -m 'create pull request'
