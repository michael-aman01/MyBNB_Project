Rails.application.routes.draw do
  post 'api/test', to: 'application#test'
  namespace :api, defaults: { format: :json } do
    resources :users, only: :create
    resource :session, only: [:show, :create, :destroy]
    resource :listings, only: [:show, :index]
    resource :images, only: [:show, :index]
  end

end
