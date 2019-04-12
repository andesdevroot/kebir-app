class AddCondicionVialToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :condicion_vial, :integer
  end
end
