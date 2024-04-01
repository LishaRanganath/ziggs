class ChangeRestaurantImageColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :restaurants, :restaurant_image, :image
  end
end
