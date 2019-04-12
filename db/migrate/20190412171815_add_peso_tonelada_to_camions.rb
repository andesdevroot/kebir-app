class AddPesoToneladaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :peso_tonelada, :decimal
  end
end
