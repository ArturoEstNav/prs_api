class CreateBridges < ActiveRecord::Migration[6.1]
  def change
    create_table :bridges do |t|
      t.string :name, default: 'PRS Patented Tremolo, Gen III'
      t.string :brand, default: 'paul reed smith'
      t.string :material, default: 'steel and brass' 
      t.string :type, default: 'tremolo'
      t.references :body, null: false, foreign_key: true

      t.timestamps
    end
  end
end
