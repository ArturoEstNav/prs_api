class CreateGuitarBridges < ActiveRecord::Migration[6.1]
  def change
    create_table :guitar_bridges do |t|
      t.references :guitar, null: false, foreign_key: true
      t.references :bridge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
