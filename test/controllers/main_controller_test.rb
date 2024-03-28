# require "test_helper"

# class MainControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @restaurant=restaurants(:one)
#   end
#   test "should get index" do
#     get main_index_url
#     assert_response :success
#   end
#   test "should add restaurant" do
#     assert_difference("Restaurant.count") do
#       post main_url, params: { restaurant: { name: @restaurant.name, email: @restaurant.email, phno: @restaurant.phno, restaurant_image: @restaurant.restaurant_image} }
#     end
#     assert_redirected_to main_url(Restaurant.last)
#   end
#   # test "should delete restaurant" do
#   #   assert_difference("Restaurant.count") do
#   #     post main_url, params: { id: @restaurant.id }
#   #   end
#   #   assert_redirected_to main_url(Restaurant.last)
#   # end
# end
