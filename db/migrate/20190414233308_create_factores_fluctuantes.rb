class CreateFactoresFluctuantes < ActiveRecord::Migration[5.2]
  def change
    create_table :factores_fluctuantes do |t|
      t.decimal :peso_carga

      t.timestamps
    end
  end
end
