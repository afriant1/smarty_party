class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :gender
      t.integer :party_id
      t.integer :item_id

      t.timestamps

    end
  end
end
