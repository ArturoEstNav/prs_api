class CreateGuitarFinishes < ActiveRecord::Migration[6.1]
  def change
    create_table :guitar_finishes do |t|
      t.references :guitar, null: false, foreign_key: true
      t.references :finish, null: false, foreign_key: true

      t.timestamps
    end
  end
end
