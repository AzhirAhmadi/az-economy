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
        get   '/profile',       to: 'admins#profile'
        resources :users
      end
      # namespace :teacher do
      #   resources :users do
      #     resources :environments, only: %i[index show] do
      #       resources :field_rent_datas, only: %i[index show]
      #       resources :loan_datas, only: %i[index show]
      #       resources :framing_datas, only: %i[index show]
      #       resources :product_datas, only: %i[index show]
            
      #       resources :companies, only: %i[show new create edit update]
      #     end
      #   end
      # end
    
      # namespace :student do
      #   resources :users do
      #     resources :environments, only: %i[index show] do
      #       resources :field_rent_datas, only: %i[index show]
      #       resources :loan_datas, only: %i[index show]
      #       resources :framing_datas, only: %i[index show]
      #       resources :product_datas, only: %i[index show]
    
      #       resources :companies, only: %i[show new create edit update]
      #     end
      #   end
      # end
    end
  end
end
