class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :telephone
      t.boolean :availability
      t.decimal :totalavg
      t.string :avcomment
      t.string :my_column
      t.string :type

      t.timestamps
    end
  end
end
