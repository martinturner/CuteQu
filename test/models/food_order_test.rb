# == Schema Information
#
# Table name: food_orders
#
#  id          :integer          not null, primary key
#  food_id     :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#

require 'test_helper'

class FoodOrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
