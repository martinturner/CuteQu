# == Schema Information
#
# Table name: customers
#
#  id               :integer          not null, primary key
#  pk_template_name :text
#  order_id         :integer
#  total_price      :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Customer < ActiveRecord::Base
    has_many :food_orders
    has_one :dining_table
end
