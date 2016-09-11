Rails.application.routes.draw do
  devise_for :users

  resources :articles do
    post :like, on: :member

    resources :comments do
      post :like, on: :member
    end
  end

  get 'welcome/index'

  root 'welcome#index'
end
