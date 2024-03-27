require 'test_helper'
require 'Main/RestaurantManager'

class RestaurantManagerTest < ActiveSupport::TestCase
 test 'deletes the restaurant' do
    restaurant = Restaurant.last
    assert_difference('Restaurant.count', -1) do
      Main::RestaurantManager.destroy(restaurant.id)
    end
 end
end