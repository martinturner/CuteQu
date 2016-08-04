class Customer < ActiveRecord::Base
    has_many :food_orders
    has_one :dining_table
end
