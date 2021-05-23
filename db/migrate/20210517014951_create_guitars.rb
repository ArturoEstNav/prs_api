class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :brand, default: 'paul reed smith'
      t.string :model, default: 'custom 24'
      t.float :weight, default: 9.0
      t.integer :string_number, default: 6
      t.text :unique_characteristics

      t.timestamps
    end
  end
end
