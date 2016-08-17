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
#  diningtable_id   :integer
#  name             :text
#  food_id          :integer
#  food_order       :jsonb
#

class Customer < ActiveRecord::Base
    has_one :dining_table
    has_many :customer_foods
    has_many :foods, :through => :customer_foods

    def food_name
      "#{name}"
    end
end
