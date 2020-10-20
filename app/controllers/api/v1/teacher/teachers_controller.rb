# frozen_string_literal: true

module Api
  module V1
    module Teacher
      class TeachersController < ApplicationController
        def set_current_user
          @current_user ||= User.find_by_jti(decode_authorization_token)
          render_access_denied unless @current_user.teacher?
        end

        def profile
          render json: @current_user
        end
      end
    end
  end
end
