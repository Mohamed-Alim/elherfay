class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :telephone
      t.boolean :availablility
      t.decimal :totalavg

      t.timestamps
    end
  end
end
