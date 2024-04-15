class MenuItemController < ApplicationController
  def show
    @resto = Restaurant.find_by(id: params[:id])
    if @resto
      @menus = @resto.menu_items.paginate(page: params[:page])
    else
      redirect_to root_path, notice: "No restaurants found"
    end
  end

  def new
    @resto = Restaurant.find_by(id: params[:restaurant_id])
    @resource = MenuItem.new
  end


  def create
    @resto = Restaurant.find_by(id: params[:restaurant_id])

    if @resto
      menu_creator = Menu::MenuCreator.new(menu_params.merge(restaurant_id: @resto.id))

      if menu_creator.create
        redirect_to menu_item_path(id: @resto.id), notice: "Menu Item added successfully"
      else
        render :new
      end
    else
      redirect_to root_path, notice: "Restaurant not found"
    end
  end


  private
  def menu_params
    params.require(:menu_item).permit(:name, :item_price,:image)
  end

end
