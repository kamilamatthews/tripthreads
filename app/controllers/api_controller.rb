class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  protected
  def authenticate_token
    authenticate_or_request_with_http_token do |token, options|
      User.find_by(auth_token: token)
    end
  end

end
