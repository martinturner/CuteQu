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

class DiningTable < ActiveRecord::Base
  has_one :customer

  def get_css
    if(customer_id.nil?)
      return "led-green"
    else
      return "led-red"
    end
  end
end
