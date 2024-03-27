class MainController < ApplicationController
  def index
    @restaurant_all=Restaurant.all
  end
  #creating a variable for the common form so that we know which model is being accessed
  def new
    @resource=Restaurant.new
  end

  # Create a new restaurant
  def create
    restaurant = Main::RestaurantCreator.new(restaurant_params).create
    if restaurant.errors.blank?
      redirect_to root_path, notice: "Restaurant added successfully"
    else
      render :new
    end
  end
  #for destroying
  def destroy
    if Main::RestaurantManager.destroy(params[:id])
      redirect_to root_path, notice: "Restaurant deleted successfully"
    else
      redirect_to root_path, notice: "Could not delete Restaurant"
    end
  end
  #private methods
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :email, :phno,:restaurant_image)
  end
end
