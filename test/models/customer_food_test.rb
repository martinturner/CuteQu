# == Schema Information
#
# Table name: customer_foods
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  food_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :boolean
#

require 'test_helper'

class CustomerFoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
