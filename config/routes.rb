Rails.application.routes.draw do
  mount_ember_app :frontend, to: '/'

  namespace :api do
    resources :projects, only: [:index, :create]
  end
end
