class MainController < ApplicationController
  def index
    @restaurant_all=Restaurant.all.paginate(page: params[:page])
  end
  #creating a variable for the common form so that we know which model is being accessed
  def new
    @resource=Restaurant.new
  end
  #for creating a new restaurant
  def create
    if Main::RestaurantCreator.new(restaurant_params).create
      redirect_to root_path, notice: "Restaurant added successfully"
    else
      render :new
    end
  end

  #for updating
  def edit
        @resto=Restaurant.find_by(id: params[:id])
  end

  def update
    updater = Main::RestaurantUpdater.new(params[:id],restaurant_params)
    if updater.update
      redirect_to root_path, notice: "Restaurant updated successfully"
    else
      redirect_to root_path, notice: "Restaurant could not be updated"
    end
  end
  #for destroying
  def destroy
    restaurant_creator = Main::RestaurantDestroyer.new(params[:id])
    restaurant = restaurant_creator.destroy
    if restaurant.errors.blank?
      redirect_to root_path, notice: "Restaurant deleted successfully"
    else
      redirect_to root_path, notice: "Could not delete Restaurant"
    end
  end

  #private methods
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :email, :phno,:image)
  end
end
