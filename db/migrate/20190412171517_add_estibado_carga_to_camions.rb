class AddEstibadoCargaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :estibado_carga, :integer
  end
end
