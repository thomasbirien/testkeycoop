module AuthHelper
  def http_login
    name = 'facturation@example.com'
    password= 'password'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(name,password)
  end
end
