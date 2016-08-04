# == Schema Information
#
# Table name: dining_tables
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :text
#

require 'test_helper'

class DiningTableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
