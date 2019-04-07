class CreateReporteMiPropiedads < ActiveRecord::Migration[5.2]
  def change
    create_table :reporte_mi_propiedads do |t|
      t.references :mi_propiedad, foreign_key: true
      t.string :tipo_de_demanda
      t.integer :años_de_analisis
      t.integer :plusvalia_historica
      t.integer :proyeccion_plusvalia
      t.integer :años_de_proyeccion
      t.integer :plusvalia_colonia
      t.integer :plusvalia_municipio
      t.integer :plusvalia_estatal
      t.integer :precio_midprice
      t.integer :precio_bidlow
      t.integer :precio_askhigh

      t.timestamps
    end
  end
end
