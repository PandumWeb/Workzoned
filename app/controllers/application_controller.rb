class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

  protected

  	def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :phone_number,:email, :password, :password_confirmation, :remember_me) }
	    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :phone_number,:email, :password, :password_confirmation, :current_password, :avatar) }
	end 
end
