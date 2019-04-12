class AddCondicionAmbientalToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :condicion_ambiental, :integer
  end
end
