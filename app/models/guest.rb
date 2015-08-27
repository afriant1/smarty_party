class Guest < ActiveRecord::Base
  validates :party_id, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :party

end
