class AddEquiposCargaToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :equipos_carga, :integer
  end
end
