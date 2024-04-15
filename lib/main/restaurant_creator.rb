module Main
    class RestaurantCreator

      attr_reader :errors
      def initialize(params, restaurant_class = Restaurant)
        @params = params
        @restaurant_class = restaurant_class
      end

      # def create
      #   restaurant = @restaurant_class.new(restaurant_params)
      #   if restaurant.save
      #       restaurant.name
      #   else
      #       @errors = restaurant.errors
      #       # {success: false, errors: course.errors}
      #       return false
      #   end
      #   # @errors = restaurant.errors unless restaurant.save

      # end
      #
      def create
        restaurant = @restaurant_class.new(restaurant_params)
        if restaurant.save
          restaurant.name
        else
          # @errors=restaurant.errors
          false
        end
        # self
        # restaurant.name  # Return the name if save was successful
      end


      # def edit

      # end


      # private
      # def restaurant_params
      #   @params[:restaurant]  # Retrieve restaurant attributes directly from @params
      # end
      #
      private
      def restaurant_params
        @params.fetch(:restaurant,{}).permit(:name, :email, :phno, :image)
      end

#     end
  end
end
