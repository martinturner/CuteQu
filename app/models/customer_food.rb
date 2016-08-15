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

class CustomerFood < ActiveRecord::Base
  belongs_to :customer
  belongs_to :food
end
