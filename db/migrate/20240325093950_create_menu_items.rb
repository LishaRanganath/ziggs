class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.integer :item_price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
