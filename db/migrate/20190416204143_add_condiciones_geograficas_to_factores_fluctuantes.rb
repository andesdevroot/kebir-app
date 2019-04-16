class AddCondicionesGeograficasToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :condiciones_geograficas, :integer
  end
end
