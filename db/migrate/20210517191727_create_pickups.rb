class CreatePickups < ActiveRecord::Migration[6.1]
  def change
    create_table :pickups do |t|
      t.string :name, default: 'dragon ii'
      t.string :brand, default: 'paul reed smith'
      t.string :position, default: 'bridge'
      t.string :dc_resistance, default: '12k'
      t.string :magnet_type, default: 'alnico 4'
      t.references :electronics_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
