class ShoppingList < ActiveRecord::Base
  validates :item_id, :presence => true
  validates :party_id, :presence => true, :uniqueness => true
  validates :amount, :presence => true, :numericality => true
  validates :delegation_status, :presence => true, :format => {:with => /\A[a-zA-Z]+\z/}
  validates :user_id, :presence => true, :numericality => true
end
