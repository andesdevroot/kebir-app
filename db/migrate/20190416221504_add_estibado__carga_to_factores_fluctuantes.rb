class AddEstibadoCargaToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :estibado_carga, :integer
  end
end
