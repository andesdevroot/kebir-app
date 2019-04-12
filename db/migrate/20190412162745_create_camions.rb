class CreateCamions < ActiveRecord::Migration[5.2]
  def change
    create_table :camions do |t|
      t.decimal :peso_carga

      t.timestamps
    end
  end
end
