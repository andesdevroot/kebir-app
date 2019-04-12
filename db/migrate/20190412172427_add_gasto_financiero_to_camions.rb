class AddGastoFinancieroToCamions < ActiveRecord::Migration[5.2]
  def change
    add_column :camions, :gasto_financ, :decimal
  end
end
