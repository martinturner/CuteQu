class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :category
      t.decimal :price
      t.text :name
      t.text :customize

      t.timestamps null: false
    end
  end
end
