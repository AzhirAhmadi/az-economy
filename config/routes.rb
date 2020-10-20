# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, skip: :all

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      devise_scope :user do
        namespace :auth do
          post   '/signin',       to: 'sessions#create'
          delete '/signout',      to: 'sessions#destroy'
        end
      end
      namespace :admin do
        get '/profile', to: 'admins#profile'
        resources :users, only: %i[index create update]
      end
      namespace :teacher do
        get   '/profile',       to: 'teachers#profile'
      end

      namespace :student do
        get   '/profile',       to: 'students#profile'
      end
    end
  end
end
