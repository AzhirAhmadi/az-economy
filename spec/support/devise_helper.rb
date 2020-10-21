module DeviseHelper
  attr_accessor :token

  def sign_in(user)
    post api_v1_auth_signin_url, params: {"user": {"email": user.email, "password": user.password }}
    @token = JSON.parse(response.body)["jwt"]
    response
  end

  def sign_out
    headers = {"Authorization": @token}
    delete api_v1_auth_signout_url, headers: headers
    @token = nil
  end
end