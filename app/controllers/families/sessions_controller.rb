class Families::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

  def create
    self.resource = warden.authenticate!(auth_options)
    if resource.valid_password?(params[:family_name])
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      flash[:alert] = "Invalid family name"
      redirect_to new_family_session_path
    end
  end

  private

  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:family_name])
  end
end