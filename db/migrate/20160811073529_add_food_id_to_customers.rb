class AddFoodIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :food_id, :integer
  end
end
