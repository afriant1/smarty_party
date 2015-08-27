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
end
