class RemoveFirstnameFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :firstname, :string
  end
end
