class AddAvailabilityRegionToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :my_column, :string
  end
end
