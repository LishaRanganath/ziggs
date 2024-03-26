class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :menu_item
  attribute :quantity, :integer, default: 1

end
