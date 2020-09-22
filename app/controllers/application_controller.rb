class ApplicationController < ActionController::Base
  include ActionController::RequestForgeryProtection
  include Pundit

  skip_before_action :verify_authenticity_token

  before_action :authenticate_user!, except: [:app]

  def authenticate_user!(*args)
    check_authorization_token
    set_current_user
  end

  def set_current_user
    @current_user ||= User.find_by_jti(decode_authorization_token)
  end

  def check_authorization_token
    if request.headers["Authorization"].blank?
      raise ErrorHandling::Errors::JwtToken::Absence.new  params: params
    end
  end

  def check_json_format
    unless request.format == :json
      sign_out
      raise ErrorHandling::Errors::Requset::NonJsonInput.new  params: params
    end
  end

  def decode_authorization_token
    return nil if request.headers["Authorization"].blank?
    
    token = request.headers["Authorization"].split('Bearer ').last
    secret = ENV['DEVISE_JWT_SECRET_KEY']
    JWT.decode(token, secret, true, algorithm: 'HS256',
      verify_jti: true)[0]['jti']
  rescue JWT::DecodeError
    raise ErrorHandling::Errors::JwtToken::Wrong.new  params: params
  end
end
