class Food < ActiveRecord::Base
  has_many :food_orders
  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
