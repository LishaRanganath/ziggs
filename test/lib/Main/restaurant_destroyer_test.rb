require 'test_helper'
require 'minitest/mock'
require 'main/restaurant_destroyer'

class RestaurantDestroyerTest < Minitest::Test
    def setup
      @subject=Main::RestaurantDestroyer
      @params={restaurant: {id:1}}
      @restaurant_params=@params[:restaurant]

      @params_mock=Minitest::Mock.new()

      @instance_mock=Minitest::Mock.new()
      @restaurant_class_mock=Minitest::Mock.new()
      @restaurant_class_mock.expect :find_by,@instance_mock,[@restaurant_params]

    end

    def test_destroy_restaurant
    #  @restaurant_class_mock.expect(:find_by,instance_mock,[{id:1}])
    #  @instance_mock.expect(:destroy,true)
    #  assert_equal true
      @instance_mock.expect :destroy,true,[]
      # @instance_mock.expect :id,@restaurant_params[:id],[]
      test_obj=@subject.new(@params_mock,@restaurant_class_mock)
      assert_equal true, test_obj.destroy
      puts "Restaurant destroyed sucessfully"


    end


end
