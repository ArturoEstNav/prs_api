class CreateGuitarsPickupsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :guitars, :pickups do |t|
      t.index :guitar_id
      t.index :pickup_id
    end

    create_join_table :guitars, :tuners do |t|
      t.index :guitar_id
      t.index :tuner_id
    end

    create_join_table :guitars, :bridges do |t|
      t.index :guitar_id
      t.index :bridge_id
    end
  end
end
