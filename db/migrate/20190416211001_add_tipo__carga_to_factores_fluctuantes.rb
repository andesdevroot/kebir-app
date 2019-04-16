class AddTipoCargaToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :tipo_carga, :integer
  end
end
