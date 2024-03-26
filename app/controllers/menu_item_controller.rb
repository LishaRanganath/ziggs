class MenuItemController < ApplicationController
  def list
    @resto = Restaurant.find_by(params[:restaurant_id])
    @menus=@resto.menu_items.paginate(page: params[:page])
  end
end
