class CreateTuners < ActiveRecord::Migration[6.1]
  def change
    create_table :tuners do |t|
      t.string :name, default: 'classic closed guitar tuning machines'
      t.string :brand, default: 'hipshot'
      t.string :material, default: 'unspecified'
      t.boolean :locking_mechanism, default: false
      t.float :weight, default: 0.0
      t.references :neck, null: false, foreign_key: true

      t.timestamps
    end
  end
end
