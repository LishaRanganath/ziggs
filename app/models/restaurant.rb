class Restaurant < ApplicationRecord
  self.per_page=5
  has_many :menu_items, dependent: :destroy
  has_one_attached :image
end
