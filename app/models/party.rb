class Party < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :date}
  validates :date, :presence => true
  validates :duration, :presence => true, :numericality => true
  validates :food_level, :presence => true, :numericality => true
  validates :drink_level, :presence => true, :numericality => true
  validates :budget, :presence => true, :numericality => true
end
