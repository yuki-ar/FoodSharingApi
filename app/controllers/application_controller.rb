class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:description])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:genre])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:averagePrice])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:businessHoursStart])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:businessHoursEnd])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:adress])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:url])

    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
