class MenuItem < ApplicationRecord
  self.per_page = 5
  belongs_to :restaurant
  has_many :cart_items
  has_many :carts, through: :cart_items

end