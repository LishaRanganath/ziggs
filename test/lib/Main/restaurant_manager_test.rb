require 'test_helper'
require 'minitest/mock'
require 'main/restaurant_creator'

class RestaurantManagerTest < Minitest::Test
  # def setup
  #   @restaurant_creator = Main::RestaurantCreator
  # end

  # def test_call_creator
  #   params = { name: "olive", email: "olive@gmail.com", phno: 1236768 }
  #   restaurant_class_mock = self.restaurant_class_mock()
  #   restaurant_creator = @restaurant_creator.new(params, restaurant_class: restaurant_class_mock).create
  #   assert assert restaurant_creator, "Restaurant creation passed"
  #   assert_nil restaurant_creator.errors
  # end

  # private

  # def restaurant_class_mock
  #   mock = Minitest::Mock.new
  #   mock.expect(:new, mock, [{ name: "olive", email: "olive@gmail.com", phno: 1236768 }])
  #   mock.expect(:errors, {})
  #   mock.expect(:save,true)
  #   mock
  # end


  def setup
        @subject=Main::RestaurantCreator
        params={restaurant: {name: "olive garden"}}
        @restaurant_params= params[:restaurant]

        @restaurant_params_mock=Minitest::Mock.new()
        @restaurant_params_mock.expect :permit, @restaurant_params, [:name, :email, :phno, :image]
        # puts "mocked"

        @params_mock=Minitest::Mock.new()
        @params_mock.expect :fetch,@restaurant_params_mock,[:restaurant, {}]

        # @params_mock = Minitest::Mock.new()
        # @params_mock.expect :[], @restaurant_params_mock, [:restaurant]


        @instance_mock=Minitest::Mock.new()

        @restaurant_class_mock=Minitest::Mock.new()

        # puts "Arguments passed to new: #{@restaurant_params.inspect}"
        @restaurant_class_mock.expect :new, @instance_mock, [@restaurant_params]

  end

  def test_success_add_restaurant
        @instance_mock.expect(:save, true, [])
        @instance_mock.expect(:name, @restaurant_params[:name], [])
        test_obj=@subject.new(@params_mock,@restaurant_class_mock)
        assert_equal "olive garden", test_obj.create
        puts "The restaurant is created"
  end

  def test_fail_add_restaurant
        @instance_mock.expect(:save, false, [])
        # @instance_mock.expect(:name, @restaurant_params[:name], [])
        test_obj=@subject.new(@params_mock,@restaurant_class_mock)
        assert_equal false, test_obj.create
        puts "The restaurant was failed to be created"

  end


end
