class CreateNecks < ActiveRecord::Migration[6.1]
  def change
    create_table :necks do |t|
      t.string :fretboard_wood, default: 'rosewood'
      t.string :neck_wood, default: 'mahogany'
      t.integer :headstock_angle, default: '10'
      t.string :construction, default: 'set neck'
      t.string :inlay_style, default: 'prs birds'
      t.string :side_inlay_style, default: 'dots'
      t.references :guitar, null: false, foreign_key: true
      t.string :fret_material, default: 'nickel'
      t.float :scale_length, default: 25.0
      t.float :fretboard_radius, default: 10.0
      t.integer :fret_number, default: 22
      t.float :width_first_fret, default: 1.6875
      t.float :width_twelfth_fret, default: 1.96875
      t.float :depth_first_fret, default: 0.84375
      t.float :depth_twelfth_fret, default: 0.0
      t.string :neck_profile, default: 'prs wide thin'
      t.string :truss_rod_type, default: 'dual action'
      t.string :finish_type, default: 'gloss polyurethane'
      t.string :binding, default: 'none'

      t.timestamps
    end
  end
end
