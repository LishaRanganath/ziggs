class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.bigint :phno

      t.timestamps
    end
  end
end
