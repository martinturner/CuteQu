# == Schema Information
#
# Table name: foods
#
#  id                 :integer          not null, primary key
#  category           :text
#  price              :decimal(, )
#  name               :text
#  customize          :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class FoodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
