class AddClaseCargaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :clase_carga, :integer
  end
end
