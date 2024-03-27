module Main
    class RestaurantCreator

      attr_reader :errors
      def initialize(params, restaurant_class: Restaurant)
        @params = params
        @restaurant_class = restaurant_class
      end

      def create
        restaurant = @restaurant_class.new(@params)
        @errors = restaurant.errors unless restaurant.save
        self
      end


      # def edit

      # end
      # def self.destroy(id)
      #   restaurant = Restaurant.find_by(id: id)
      #   restaurant.destroy
      # end

      # # private
      # # def delete_restaurant_params
      # #   params.permit(:id)
      # # end

#     end
  end
end
