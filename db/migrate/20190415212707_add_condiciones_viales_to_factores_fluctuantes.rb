class AddCondicionesVialesToFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    add_column :factores_fluctuantes, :condiciones_viales, :decimal
  end
end
