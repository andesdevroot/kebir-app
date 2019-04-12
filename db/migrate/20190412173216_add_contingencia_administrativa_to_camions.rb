class AddContingenciaAdministrativaToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :contingencia_administrativa, :integer
  end
end
