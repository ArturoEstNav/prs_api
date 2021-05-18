class CreateBodies < ActiveRecord::Migration[6.1]
  def change
    create_table :bodies do |t|
      t.string :top_wood, default: 'maple'
      t.string :back_wood, default: 'mahogany'
      t.string :body_type, default: 'custom 24 double cut'
      t.string :construction, default: 'set neck'
      t.string :weight_relief_type, default: 'none'
      t.string :binding, default: 'faux'
      t.string :strap_button_type, default: 'standard'
      t.string :finish_type, default: 'gloss polyurethane'
      t.references :guitar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
