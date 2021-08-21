class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    helper_method :is_admin! # Helper method set for admins

    private
    def is_admin!
        if current_user && current_user.admin
        else
            redirect_to root_path
        end
    end

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:admin])
        devise_parameter_sanitizer.permit(:account_update, keys: [:admin])
    end
end
