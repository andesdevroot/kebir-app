class AddCondicionesAmbientalesToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :condiciones_ambientales, :integer
  end
end
