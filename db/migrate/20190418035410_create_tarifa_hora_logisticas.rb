class CreateTarifaHoraLogisticas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarifa_hora_logisticas do |t|
      t.decimal :valor_dolar
      t.integer :variacion_inversion
      t.integer :variacion_mano_obra
      t.decimal :variacion_materia_prima
      t.decimal :varicion_financiera
      t.decimal :nivel_utilidades
      t.decimal :impuestos_derechos

      t.timestamps
    end
  end
end
