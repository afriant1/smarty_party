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
    alcohol_course.to_i*((male_count*(drink_level.to_f+0.75))+(female_count*(drink_level.to_f+0.5))).to_i
  end

  def shopping_items(category)
    shopping_lists.joins(:item).where("items.category = '#{category}'")
  end

  def total_servings(category)
    shopping_items(category).map(&:serves).sum
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
end
