class AddContingenciaOperacionalToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :contingencia_operacional, :integer
  end
end
