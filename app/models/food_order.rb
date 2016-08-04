# == Schema Information
#
# Table name: food_orders
#
#  id         :integer          not null, primary key
#  food_id    :jsonb
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FoodOrder < ActiveRecord::Base
  belongs_to :customer
  belongs_to :food
end
