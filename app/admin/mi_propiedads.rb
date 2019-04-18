ActiveAdmin.register MiPropiedad do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	permit_params :estado, :colonia, :calle, :numero, :tipo_de_propiedad, :m2terreno, :m2construccion, :habitaciones, :entorno, :condiciones_de_la_propiedad, :precio_al_que_adquiri, :año_al_que_adquiri, :en_venta, :plazo_de_venta, :image, uploads: [] 

end
