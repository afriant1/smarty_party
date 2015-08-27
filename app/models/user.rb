class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :firstname, :presence => true
  validates :lastname, :presence => true
  validates :email, :presence => true
  validates :gender, :presence => true


  has_many :items
  has_many :guests
  has_many :parties, :through => :guests

end
