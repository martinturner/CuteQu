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

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
