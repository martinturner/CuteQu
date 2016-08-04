class CreateFoodOrders < ActiveRecord::Migration
  def change
    create_table :food_orders do |t|
      t.jsonb :food_id

      t.timestamps null: false
    end
  end
end
