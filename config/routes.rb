Rails.application.routes.draw do
  post 'api/test', to: 'application#test'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show,:create, :edit, :destroy,:new]
    resource :session, only: [:show, :create, :destroy]
    resources :listings, only: [:show, :index,:create,:destroy]

  end

end
