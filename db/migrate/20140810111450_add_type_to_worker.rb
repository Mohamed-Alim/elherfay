class AddTypeToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :business_id, :integer
    add_index :workers, :business_id
  end
end
