class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items,dependent: :destroy
  has_many :menu_items,through: :cart_items

  attribute :completed, :boolean, default: false
end
