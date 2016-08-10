class AddCustomerIdToFoodOrders < ActiveRecord::Migration
  def change
    add_column :food_orders, :customer_id, :integer
  end
end
