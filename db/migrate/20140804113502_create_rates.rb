class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :quality
      t.integer :price
      t.integer :cleanliness
      t.integer :puctuality
      t.integer :dealing
      t.decimal :average

      t.timestamps
    end
  end
end
