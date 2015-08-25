class Item < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates :amount, :presence => true, :numericality => true
  validates :units, :presence => true, :format => {:with => /\A[a-zA-Z]+\z/, :message => "only allows letters"}
  validates :price, :presence => true, :numericality => true

  has_many :shopping_lists
end
