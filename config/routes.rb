# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # namespace :admin do
  #   resources :users
  # end

  # namespace :api do
  #   namespace :v1 do
  #     namespace :teacher do
  #       resources :users do
  #         resources :environments, only: %i[index show] do
  #           resources :field_rent_datas, only: %i[index show]
  #           resources :loan_datas, only: %i[index show]
  #           resources :framing_datas, only: %i[index show]
  #           resources :product_datas, only: %i[index show]
            
  #           resources :companies, only: %i[show new create edit update]
  #         end
  #       end
  #     end
    
  #     namespace :student do
  #       resources :users do
  #         resources :environments, only: %i[index show] do
  #           resources :field_rent_datas, only: %i[index show]
  #           resources :loan_datas, only: %i[index show]
  #           resources :framing_datas, only: %i[index show]
  #           resources :product_datas, only: %i[index show]
    
  #           resources :companies, only: %i[show new create edit update]
  #         end
  #       end
  #     end
  #   end
  # end
end
