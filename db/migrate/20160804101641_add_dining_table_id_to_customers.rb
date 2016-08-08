class AddDiningTableIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :diningtable_id, :integer
  end
end
