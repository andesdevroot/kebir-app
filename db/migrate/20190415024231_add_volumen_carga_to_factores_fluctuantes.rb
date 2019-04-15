class AddVolumenCargaToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :volumen_carga, :decimal
  end
end
