class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :cleanliness
      t.integer :quality
      t.integer :price
      t.integer :punctulity
      t.integer :dealing
      t.decimal :average
      t.text :comment

      t.timestamps
    end
  end
end
