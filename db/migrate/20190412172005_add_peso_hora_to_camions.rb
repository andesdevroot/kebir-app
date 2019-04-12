class AddPesoHoraToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :peso_hora, :decimal
  end
end
