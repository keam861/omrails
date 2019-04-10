class Casa < ApplicationRecord
  belongs_to :user


  validates :estado, :municipio, :colonia, :calle, :tipo_de_propiedad, :m2terreno, :m2construccion, presence: true
end
