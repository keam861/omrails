class CreateCasas < ActiveRecord::Migration[5.2]
  def change
    create_table :casas do |t|
      t.references :user, foreign_key: true
      t.string :estado
      t.string :municipio
      t.string :colonia
      t.string :calle
      t.string :tipo_de_propiedad
      t.integer :m2terreno
      t.integer :m2construccion
      t.integer :baños
      t.integer :habitaciones
      t.string :entorno
      t.integer :precioask
      t.boolean :inmobiliaria

      t.timestamps
    end
  end
end
