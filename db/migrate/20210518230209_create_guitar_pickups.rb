class CreateGuitarPickups < ActiveRecord::Migration[6.1]
  def change
    create_table :guitar_pickups do |t|
      t.references :guitar, null: false, foreign_key: true
      t.references :pickup, null: false, foreign_key: true

      t.timestamps
    end
  end
end
