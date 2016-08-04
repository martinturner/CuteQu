class AddNameToDiningTables < ActiveRecord::Migration
  def change
    add_column :dining_tables, :name, :text
  end
end
