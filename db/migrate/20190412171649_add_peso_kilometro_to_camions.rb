class AddPesoKilometroToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :peso_kilometro, :integer
  end
end
