class Party < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :date}
  validates :date, :presence => true
  validates :duration, :presence => true, :numericality => true
  validates :food_level, :presence => true, :numericality => true
  validates :drink_level, :presence => true, :numericality => true
  validates :budget, :presence => true, :numericality => true

  belongs_to :user
  has_many :guests
  has_many :shopping_lists
  has_many :items, :through => :shopping_lists

  def alcohol_drinks
    (alcohol_course.to_i*((male_count*(drink_level.to_f+0.75))+(female_count*(drink_level.to_f+0.5)))).to_i
  end

  def appetizer_pieces
    (appetizer_course.to_i*1.25*food_level*(male_count+female_count)).to_i
  end

  def entree_meals
    (entree_course.to_i*(male_count+female_count+((((food_level-1).to_f)*0.15)*male_count)+((((food_level-1).to_f)*0.1)*female_count))).to_i
  end

  def dessert_pieces
    (dessert_course.to_i*1.25*food_level*(male_count+female_count)).to_i
  end

  def nonalcohol_drinks
    (male_count+female_count).to_i
  end

  def flatware_sets
    ((male_count+female_count)*((appetizer_course.to_i*0.5)+entree_course.to_i+(dessert_course.to_i*0.5))).to_i
  end

  def shopping_items(category)
    shopping_lists.joins(:item).where("items.category = '#{category}'")
  end

  def total_servings(category)
    shopping_items(category).map(&:serves).sum.to_i
  end

  def comparison(category, other)
    total_servings(category).to_i - other
  end

  def comparison_sign(category, other)
    diff = comparison(category, other)
    if diff < 0
      'under'
    elsif diff == 0
      'satisfied'
    else
      'over'
    end
  end

  def total_cost
    shopping_lists.map(&:costs).sum
  end

end

