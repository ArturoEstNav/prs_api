class CreatePickups < ActiveRecord::Migration[6.1]
  def change
    create_table :pickups do |t|
      t.string :name, default: 'dragon ii'
      t.string :brand, default: 'paul reed smith'
      t.string :position, default: 'bridge'
      t.string :dc_resistance, default: '12k'
      t.string :magnet_type, default: 'alnico 4'
      t.string :lead_cable, default: '4 conductor'
      t.string :output, default: 'medium output'
      t.integer :bass_eq, default: 0
      t.integer :mids_eq, default: 0
      t.integer :treble_eq, default: 0
      t.boolean :wax_potted, default: true

      t.timestamps
    end
  end
end
