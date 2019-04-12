class AddCondicionGeograficaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :condicion_geografica, :integer
  end
end
