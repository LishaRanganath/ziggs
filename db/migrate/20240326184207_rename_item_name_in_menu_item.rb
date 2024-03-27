class RenameItemNameInMenuItem < ActiveRecord::Migration[6.1]
  def change
    rename_column :menu_items, :item_name, :name
  end
end
