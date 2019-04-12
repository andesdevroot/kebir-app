class AddCifraNegocioToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :cifra_negocio, :decimal
  end
end
