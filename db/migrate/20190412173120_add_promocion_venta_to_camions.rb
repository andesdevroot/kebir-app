class AddPromocionVentaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :promocion_venta, :integer
  end
end
