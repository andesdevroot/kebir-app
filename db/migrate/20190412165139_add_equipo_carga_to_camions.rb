class AddEquipoCargaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :equipo_cargar, :integer
  end
end
