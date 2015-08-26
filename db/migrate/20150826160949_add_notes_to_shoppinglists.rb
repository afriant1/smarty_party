class AddNotesToShoppinglists < ActiveRecord::Migration
def change
    add_column :shopping_lists, :notes, :string
  end
end
