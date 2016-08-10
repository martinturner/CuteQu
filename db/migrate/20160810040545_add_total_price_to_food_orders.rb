class AddTotalPriceToFoodOrders < ActiveRecord::Migration
  def change
    add_column :food_orders, :total_price, :decimal
  end
end
