class CreateCostosVariables < ActiveRecord::Migration[5.2]
  def change
    create_table :costos_variables do |t|
      t.integer :localidad_logistica
      t.integer :localidad_consolidado
      t.integer :localidad_stacking
      t.decimal :valor_peajes
      t.decimal :vitaico_kilometros
      t.decimal :servicio_kilometro
      t.integer :sueldo_conductor
      t.decimal :porcentaje_conductor
      t.integer :horas_logistica

      t.timestamps
    end
  end
end
