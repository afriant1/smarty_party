class RemoveShopping < ActiveRecord::Migration
def change
    remove_column :shopping_lists, :servings, :integer
    remove_column :shopping_lists, :serving_price, :float
  end
end
