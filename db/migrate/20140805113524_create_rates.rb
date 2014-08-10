class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :quality
      t.integer :price
      t.integer :cleanliness
      t.integer :punctuality
      t.integer :dealing
      t.decimal :average
      t.integer :worker_id
      t.string :review
      t.text :comment

      t.timestamps
    end
  end
end
