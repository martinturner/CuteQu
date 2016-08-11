# == Schema Information
#
# Table name: food_orders
#
#  id          :integer          not null, primary key
#  food_id     :jsonb
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :integer
#  total_price :decimal(, )
#

class FoodOrder < ActiveRecord::Base
  has_many :foods
  belongs_to :customer
  before_save :update_total

  def total_price
    self.foods.collect {|food| food.price }.sum
  end

  private

  def update_total
    self[:total_price] = total_price
  end
end
