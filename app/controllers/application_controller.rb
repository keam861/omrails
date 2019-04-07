class ApplicationController < ActionController::Base

	def access_denied(exception)
	  redirect_to root_path, alert: exception.message
	end
  	
  	# def current_mi_propiedad
   #  	return unless session[:mi_propiedad_id]
   #  	@current_mi_propiedad ||= MiPropiedad.find(session[:mi_propiedad_id])
  	# end
end

