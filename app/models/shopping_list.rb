class ShoppingList < ActiveRecord::Base
  validates :item_id, :presence => true
  validates :party_id, :presence => true
  validates :quantity, :presence => true, :numericality => true

  belongs_to :party
  belongs_to :user
  belongs_to :item

  has_many :items

end
