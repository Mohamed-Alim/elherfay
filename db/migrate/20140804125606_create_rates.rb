class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :cleanliness
      t.intger :quality
      t.integer :price
      t.integer :punctulity
      t.decimal :average
      t.integer :dealing

      t.timestamps
    end
  end
end
