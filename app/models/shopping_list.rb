class ShoppingList < ActiveRecord::Base
  validates :item_id, :presence => true
  validates :party_id, :presence => true

  belongs_to :party
  belongs_to :user
  has_many :items
  has_many :guests

end
