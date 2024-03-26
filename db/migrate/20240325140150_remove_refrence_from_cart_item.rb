class RemoveRefrenceFromCartItem < ActiveRecord::Migration[6.1]
  def change
    remove_reference :cart_items, :user, null: false, foreign_key: true
  end
end
