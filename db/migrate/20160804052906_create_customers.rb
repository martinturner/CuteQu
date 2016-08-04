class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :pk_template_name
      t.integer :order_id
      t.decimal :total_price

      t.timestamps null: false
    end
  end
end
