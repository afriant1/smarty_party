class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.integer :amount
      t.string :units
      t.integer :serving_size
      t.integer :price

      t.timestamps

    end
  end
end
