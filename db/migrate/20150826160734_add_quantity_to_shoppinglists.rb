class AddQuantityToShoppinglists < ActiveRecord::Migration
def change
    add_column :shopping_lists, :quantity, :integer
  end
end
