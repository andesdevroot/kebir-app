class CreateCostosFijos < ActiveRecord::Migration[5.2]
  def change
    create_table :costos_fijos do |t|
      t.integer :cantidad_movimiento_mensual
      t.integer :frecuencia_movimiento
      t.integer :multiplividad_tiempo_movimiento

      t.timestamps
    end
  end
end
