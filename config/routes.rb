Rails.application.routes.draw do
  post 'api/test', to: 'application#test'
  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show,:create, :edit, :destroy,:new,:index]
    resource :session, only: [:show, :create, :destroy]
    resources :reviews, only: [:destroy, :update]
    resources :listings, only: [:show, :index,:create,:destroy]
    resources :users, only: [:show] do
      resources :reservations, only: [:create, :destroy]
    end
   resources :listings, only: [:show] do
      resources :reservations, only: [:index]
      resource :reviews, only: [:create]
   end

   



   get 'reservations', to: 'reservations#index'
  end

  get '*path', to: "static_pages#frontend_index"
end
