class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :tipo
      t.string :marca
      t.string :patente
      t.string :año
      t.string :modelo
      t.string :nombre_chofer
      t.string :dueno
      t.text :descripcion

      t.timestamps
    end
  end
end
