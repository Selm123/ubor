class AddAdminToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :admin, :boolean
  end
end
