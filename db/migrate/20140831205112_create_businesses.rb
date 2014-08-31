class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :picture
      t.integer :worker_id
      t.timestamps
    end
  end
end
