class CreateMiPropiedads < ActiveRecord::Migration[5.2]
  def change
    create_table :mi_propiedads do |t|
      t.references :user, foreign_key: true
      t.string :estado
      t.string :municipio
      t.string :colonia
      t.string :calle
      t.integer :numero
      t.string :tipo_de_propiedad
      t.integer :m2terreno
      t.integer :m2construccion
      t.integer :baños
      t.integer :habitaciones
      t.string :entorno
      t.string :condiciones_de_la_propiedad
      t.integer :precio_al_que_adquiri
      t.integer :año_al_que_adquiri
      t.boolean :en_venta
      t.string :plazo_de_venta

      t.timestamps
    end
  end
end
