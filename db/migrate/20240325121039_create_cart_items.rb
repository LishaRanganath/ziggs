class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.references :user, null: false, foreign_key: true
      t.references :menu_item, null: false, foreign_key: true
      t.boolean :completed

      t.timestamps
    end
  end
end
