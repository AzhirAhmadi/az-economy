# config/initializers/warden_auth.rb
Warden::JWTAuth.configure do |config|
  config.secret = ENV['DEVISE_JWT_SECRET_KEY']
  config.dispatch_requests = [ 
    ['POST', %r{^/api/v1/auth/signin$}],
    ['POST', %r{^/api/v1/auth/signin.json$}]
  ]
  config.revocation_requests = [
    ['DELETE', %r{^/api/v1/auth/signout$}],
    ['DELETE', %r{^/api/v1/auth/signout.json$}]
  ]
end