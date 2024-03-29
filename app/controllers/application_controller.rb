class ApplicationController < ActionController::Base
	before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit :first_name, :last_name, :position, :username, :email, :password, :password_confirmation
      end
    end

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
  	users_path
  end
  def after_sign_out_path_for(resource)
  	root_path
  end
end
