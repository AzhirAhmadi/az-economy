# frozen_string_literal: true

module Api
  module V1
    module Auth
      class SessionsController < Devise::SessionsController
        skip_before_action :verify_signed_out_user
        skip_before_action :authenticate_user!, only: [:create]

        def create
          resource = warden.authenticate(scope: :user)

          sign_in(resource_name, resource)

          render json: {
            success: true,
            email: current_user.email,
            role: current_user.role.class.to_s.downcase,
            jwt: 'Bearer ' + request.env['warden-jwt_auth.token'],
            response: 'Authentication successful',
          }
        end

        def destroy
          user = User.find_by_jti(decode_authorization_token)

          user.update_column(:jti, SecureRandom.uuid)

          render json: {
            message: 'signed out!',
          }
        end
      end
    end
  end
end
