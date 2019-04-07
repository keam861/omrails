class MiPropiedad < ApplicationRecord
  belongs_to :user
  has_one :reporte_mi_propiedad
end
