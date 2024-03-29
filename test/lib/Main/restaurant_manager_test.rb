require 'test_helper'
require 'minitest/mock'
require 'main/restaurant_creator'

class RestaurantManagerTest < Minitest::Test
  def setup
    @restaurant_creator = Main::RestaurantCreator
  end

  def test_call_creator
    params = { name: "olive", email: "olive@gmail.com", phno: 1236768 }
    restaurant_class_mock = self.restaurant_class_mock() 
    restaurant_creator = @restaurant_creator.new(params, restaurant_class: restaurant_class_mock).create
    assert assert restaurant_creator, "Restaurant creation passed"
    assert_nil restaurant_creator.errors
  end

  private

  def restaurant_class_mock
    mock = Minitest::Mock.new
    mock.expect(:new, mock, [{ name: "olive", email: "olive@gmail.com", phno: 1236768 }])
    mock.expect(:errors, {}) 
    mock.expect(:save,true)
    mock
  end
end
