class ConfirmationsController < Devise::ConfirmationsController
  protected

  def after_confirmation_path_for(resource_name, resource)
    "https://frontend.example.com/login"
  end
end
