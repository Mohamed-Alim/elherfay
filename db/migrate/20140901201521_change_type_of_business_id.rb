class ChangeTypeOfBusinessId < ActiveRecord::Migration
  def change
    
    change_column :workers, :business_id, :integer
  end
end
