class CartItemController < ApplicationController
  def add
    @cart = current_user.carts.last
    if @cart.present?
      @cart_item = @cart.cart_items.find_by(menu_item_id: params[:menu_item_id])
      if @cart_item
        if @cart_item.update(quantity: @cart_item.quantity + 1)
          redirect_to menu_item_path(restaurant_id: params[:restaurant_id]), notice: "Quantity of the item updated"
        else
          redirect_to menu_item_path(restaurant_id: params[:restaurant_id]), alert: "Failed to update quantity"
        end
      else
        @cart_item = @cart.cart_items.build(menu_item_id: params[:menu_item_id])
        if @cart_item.save
          redirect_to menu_item_path(restaurant_id: params[:restaurant_id]), notice: "Item added to cart"
        else
          redirect_to menu_item_path(restaurant_id: params[:restaurant_id]), alert: "Failed to add item to cart"
        end
      end
    end
  end
end
