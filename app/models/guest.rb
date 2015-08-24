class Guest < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => {:scope => :email}
  validates :email, :presence => true
  validates :party_id, :presence => true
  validates :gender, :presence => true
end
