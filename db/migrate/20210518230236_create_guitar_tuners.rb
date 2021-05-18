class CreateGuitarTuners < ActiveRecord::Migration[6.1]
  def change
    create_table :guitar_tuners do |t|
      t.references :guitar, null: false, foreign_key: true
      t.references :tuner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
