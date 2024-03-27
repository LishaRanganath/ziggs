class Restaurant < ApplicationRecord
  has_many :menu_items, dependent: :destroy
  has_one_attached :restaurant_image
end
