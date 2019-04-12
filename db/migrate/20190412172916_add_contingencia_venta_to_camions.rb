class AddContingenciaVentaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :contingencia_venta, :decimal
  end
end
