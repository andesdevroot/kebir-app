class CreateCostosMarginals < ActiveRecord::Migration[5.2]
  def change
    create_table :costos_marginals do |t|
      t.decimal :gasto_finaciero
      t.decimal :cifra_negocio
      t.decimal :promocion_venta
      t.decimal :contingencia_administrativa
      t.decimal :contingencia_operacional
      t.decimal :contingencia_produccion

      t.timestamps
    end
  end
end
