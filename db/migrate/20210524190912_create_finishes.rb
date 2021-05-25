class CreateFinishes < ActiveRecord::Migration[6.1]
  def change
    create_table :finishes do |t|
      t.string :back_color, default: 'cherry'
      t.string :base_color, default: 'brown'
      t.string :binding, default: 'faux'
      t.string :finish_name, default: 'tobacco sunburst'
      t.string :clearcoat_type, default: 'polyurethane gloss'
      t.boolean :matching_heastock, default: false

      t.timestamps
    end
  end
end
