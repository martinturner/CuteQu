class Food < ActiveRecord::Base
  has_many :food_orders
  has_attached_file :image, styles: { large: "600x600#", medium: "400x600#", thumb: "200x200#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
