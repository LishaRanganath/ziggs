class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :check_to_create_cart

  protected
  def check_to_create_cart
    if user_signed_in?
      if (current_user.carts.exists?(completed:true) || !current_user.carts.exists?) && !current_user.isadmin
          current_user.carts.create
      end
    end
  end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
