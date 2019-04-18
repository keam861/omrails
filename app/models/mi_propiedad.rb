class MiPropiedad < ApplicationRecord
  belongs_to :user
  has_one :reporte_mi_propiedad

  has_many_attached :images
  has_many_attached :uploads
end
