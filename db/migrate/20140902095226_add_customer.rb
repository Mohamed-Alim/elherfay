class AddCustomer < ActiveRecord::Migration
  def change
      add_column :rates, :customer_name, :string
      add_column :rates, :customer_telephone, :string
      add_column :rates, :customer_address, :string


  end
end
