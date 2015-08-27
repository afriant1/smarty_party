class ShoppingList < ActiveRecord::Base
  validates :item_id, :presence => true
  validates :party_id, :presence => true
  validates :quantity, :presence => true, :numericality => true

  belongs_to :party
  belongs_to :user
  belongs_to :item

  # has_many :items

  def serves
    self.quantity * self.item.serving_size
  end

  def costs
    self.quantity * self.item.price
  end
end
