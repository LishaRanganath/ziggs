class RemoveCompletedFromCartItem < ActiveRecord::Migration[6.1]
  def change
    remove_column :cart_items, :completed, :boolean
  end
end
