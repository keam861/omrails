ActiveAdmin.register Casa do
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

	permit_params :estado, :municipio, :colonia, :calle, :tipo_de_propiedad, :m2terreno, :m2construccion, :baños, :habitaciones, :entorno, :precioask, :inmobiliaria

end
