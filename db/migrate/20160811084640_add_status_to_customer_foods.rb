class AddStatusToCustomerFoods < ActiveRecord::Migration
  def change
    add_column :customer_foods, :status, :boolean
  end
end
