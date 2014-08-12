class AddAvailabilityRegionToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :region, :string
  end
end
