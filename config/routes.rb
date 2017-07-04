Rails.application.routes.draw do

  namespace :api do
    resources :projects, only: [:index]
    resources :project_images, only: [:index, :show]
  end

  devise_for :users

  namespace :admin do
    root to: 'projects#new'

    resources :projects, only: [:new, :create]
  end

  mount_ember_app :frontend, to: '/'

end
