class CreateElectronicSpecLists < ActiveRecord::Migration[6.1]
  def change
    create_table :electronic_spec_lists do |t|
      t.string :switch_type, default: 'toggle'
      t.string :electronic_list, default: '1 volume 1 tone 1 selector switch'
      t.string :capacitor_values, default: '0.022µF'
      t.string :potentiometer_values, default: '500k'
      t.references :guitar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
