class AddTypeToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :worker_type, :string
  end
end
