module Api::V1::Auth
  class SessionsController < Devise::SessionsController
    skip_before_action :verify_signed_out_user
    skip_before_action :authenticate_user!, only: [:create] 

    def create
      resource = warden.authenticate(scope: :user)
      
      sign_in(resource_name, resource)
      render json:  {
        success: true,
        email: current_user.email,
        jwt: 'Bearer '+request.env['warden-jwt_auth.token'],
        response: "Authentication successful"
      }
    end

    def destroy
      user = User.find_by_jti(decode_authorization_token)
      
      user.update_column(:jti, SecureRandom.uuid)
      signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
      render json: {
        message: "signed out!"
      }
    end

    def self.getCurrentUser
      User.find_by_jti(decode_authorization_token)
    end
  end
end
  