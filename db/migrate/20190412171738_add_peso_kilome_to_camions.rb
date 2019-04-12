class AddPesoKilomeToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :peso_kilome, :decimal
  end
end
