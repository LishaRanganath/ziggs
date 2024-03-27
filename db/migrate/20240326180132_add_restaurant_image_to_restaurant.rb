class AddRestaurantImageToRestaurant < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :restaurant_image, :string
  end
end
