class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.float :weight
      t.integer :string_number

      t.timestamps
    end
  end
end
