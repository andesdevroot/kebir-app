class AddTipoCargaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :tipo_carga, :integer
  end
end
