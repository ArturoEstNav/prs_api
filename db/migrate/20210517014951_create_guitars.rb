class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :brand, default: 'paul reed smith'
      t.string :model_name, default: 'custom 24'
      t.float :weight, default: 9.0
      t.integer :string_number, default: 6

      t.timestamps
    end
  end
end
