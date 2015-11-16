class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :groups, through: :subscriptions
  has_many :topics, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  validates :username, :password, :presence => true
  validates_inclusion_of :premium, in: [true, false]
end
