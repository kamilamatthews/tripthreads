class Api::SessionsController < ApiController
  def create
    assert_request_content_type Mime::JSON

    respond_to do |format|
      format.json do
        if authenticate_user
          render json: {status: 'success', token: authenticate_user.token}, status: :created
        else
          render json: {status: 'unauthorized'}, status: :unauthorized
        end
      end
    end

  end

  private
  def authenticate_user
    user = User.find_for_database_authentication(email: user_params[:email])
    if user && user.valid_for_authentication? {user.valid_password?(user_params[:password])}
      user.update_attribute(:failed_attempts, 0) unless user.failed_attempts.zero?
      return user
    end
  end

  def assert_request_content_type(content_type)
    raise 'unsupported_media_type' unless request.content_type == content_type
  end

  def user_params
    params.permit(:email, :password)
  end
end
