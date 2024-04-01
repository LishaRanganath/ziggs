module Main
  class RestaurantUpdater
    attr_reader :errors

    def initialize(id,params, restaurant_class: Restaurant)
      @id=id
      @params = params
      @restaurant_class = restaurant_class
    end

    def update
      restaurant = @restaurant_class.find_by(id: @id)
      if restaurant.update(@params)
        return true
      else
        @errors = restaurant.errors
        return false
      end
    end
  end
end
