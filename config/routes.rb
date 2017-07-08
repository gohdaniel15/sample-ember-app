Rails.application.routes.draw do

  namespace :api do
    resources :projects, only: [:index]
    resources :project_images, only: [:index, :show]
    resources :contacts, only: [:create]
  end

  namespace :admin do
    root to: 'projects#index'

    resources :projects, only: [:index, :show, :new, :create, :edit, :update]
  end

  devise_for :users

  mount_ember_app :frontend, to: '/'

end
