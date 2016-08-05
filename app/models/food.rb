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

class Food < ActiveRecord::Base
  has_many :food_orders
  has_attached_file :image, styles: { large: "600x600#", medium: "200x300#", thumb: "200x200#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
