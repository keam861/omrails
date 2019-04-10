class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	def access_denied(exception)
	  redirect_to root_path, alert: exception.message
	end
  	
  	# def current_mi_propiedad
   #  	return unless session[:mi_propiedad_id]
   #  	@current_mi_propiedad ||= MiPropiedad.find(session[:mi_propiedad_id])
  	# end

  	protected

  	def configure_permitted_parameters
  	  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  	end
end

