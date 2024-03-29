class CartItemController < ApplicationController
  before_action :check_active_cart
  def show
    @cart_items=current_user.carts.last.cart_items
  end
  def add_cart_items
    if @active_cart.present?
      result=MyCartItem::CartAddUpdate.new(@active_cart,params[:menu_item_id]).add_or_update_items
      if result[:success]
        redirect_to menu_item_path(restaurant_id: params[:restaurant_id])
        flash[:notice]=result[:message]
      else
        redirect_to menu_item_path(restaurant_id: params[:restaurant_id])
        flash[:alert]=result[:message]
      end
    end
  end
  
  private
  def check_active_cart
    @carts = current_user.carts
    @active_cart=@carts.find_by(completed: false)
  end
end
