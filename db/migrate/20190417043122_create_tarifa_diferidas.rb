class CreateTarifaDiferidas < ActiveRecord::Migration[5.2]
  def change
    create_table :tarifa_diferidas do |t|
      t.decimal :peso_kilometro
      t.decimal :peso_tonelada
      t.decimal :peso_hora

      t.timestamps
    end
  end
end
