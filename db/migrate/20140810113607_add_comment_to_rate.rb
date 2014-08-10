class AddCommentToRate < ActiveRecord::Migration
  def change
    add_column :rates, :type, :text
  end
end
