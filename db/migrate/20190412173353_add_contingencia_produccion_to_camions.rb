class AddContingenciaProduccionToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :contingencia_produccion, :integer
  end
end
