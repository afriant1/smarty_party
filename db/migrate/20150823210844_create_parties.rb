class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :date
      t.integer :duration
      t.integer :male_count
      t.integer :female_count
      t.integer :food_level
      t.integer :drink_level
      t.integer :budget
      t.binary :appetizer_course
      t.binary :entree_course
      t.binary :dessert_course
      t.binary :alcohol_course

      t.timestamps

    end
  end
end
