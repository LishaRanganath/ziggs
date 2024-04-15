module Main
    class RestaurantDestroyer
        attr_reader :errors
        def initialize(id,restaurant_class = Restaurant)
              @params= {id: id}
              @restaurant_class=restaurant_class
        end

        def destroy
              restaurant = @restaurant_class.find_by(@params)
              if restaurant.destroy
                     true
              else
                     false
              end
            #   @errors = restaurant.errors unless restaurant.destroy
            #   self
            #   return true
        end
    end
end
