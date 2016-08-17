class AddFoodOrderToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :food_order, :jsonb
  end
end
