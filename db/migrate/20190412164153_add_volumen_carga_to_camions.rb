class AddVolumenCargaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :volumen_cargar, :integer
  end
end
