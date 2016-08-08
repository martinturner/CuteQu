class AddNameToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :name, :text
  end
end
