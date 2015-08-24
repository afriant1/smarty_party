class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.integer :item_id
      t.integer :party_id
      t.integer :servings
      t.float :serving_price
      t.string :delegation_status
      t.integer :user_id
      t.string :completion_status

      t.timestamps

    end
  end
end
