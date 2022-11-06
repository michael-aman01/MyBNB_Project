Rails.application.routes.draw do
  post 'api/test', to: 'application#test'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show,:create, :edit, :destroy,:new]
    resource :session, only: [:show, :create, :destroy]
    resources :listings, only: [:show, :index,:create,:destroy]
    resources :listings, only: [:show] do
      resources :reservations, only: [:create, :destroy]
    end

  end

  get '*path', to: "static_pages#frontend_index"
end
