class AddOwnerColumnToShoppingLists < ActiveRecord::Migration
  def change
    add_column :shopping_lists, :owner, :string
  end
end
