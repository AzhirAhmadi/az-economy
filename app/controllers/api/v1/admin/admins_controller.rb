# frozen_string_literal: true

module Api::V1::Admin
  class AdminsController < ApplicationController
    def authenticate_user!(*_args)
      return unless check_authorization_token?

      render_access_denied unless current_user&.admin?
    end

    def profile
      render json: current_user
    end
  end
end
