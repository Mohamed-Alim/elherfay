class RenameWorkerTypeToBusinessId < ActiveRecord::Migration
  def change
    rename_column :workers, :worker_type, :business_id
  end
  
end
