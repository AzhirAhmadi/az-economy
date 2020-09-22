module Api::V1::Admin
  class AdminsController < ApplicationController
    def set_current_user
      @current_user ||= User.find_by_jti(decode_authorization_token)
      render json:  {
        success: false,
        response: "Access denied"
      } unless @current_user.is_admin?
    end

    def profile
      render json: @current_user
    end
  end
end