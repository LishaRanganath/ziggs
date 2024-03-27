class MainCreator
  def self.create(params)
    restaurant = Restaurant.new(params)
    restaurant.save
  end


  def edit

  end
  def self.destroy(id)
    restaurant = Restaurant.find_by(id: id)
    restaurant&.destroy
  end

  private
  # def delete_restaurant_params
  #   params.permit(:id)
  # end

end
