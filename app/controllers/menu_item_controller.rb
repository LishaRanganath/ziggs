class MenuItemController < ApplicationController
  def show
    @resto = Restaurant.find_by(id: params[:id])
    @menus=@resto.menu_items.paginate(page: params[:page])
  end

  def new
        @resource=MenuItem.new
  end
  def create
        
  end

end
