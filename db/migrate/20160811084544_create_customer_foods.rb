class CreateCustomerFoods < ActiveRecord::Migration
  def change
    create_table :customer_foods do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
