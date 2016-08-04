class CreateDiningTables < ActiveRecord::Migration
  def change
    create_table :dining_tables do |t|
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
