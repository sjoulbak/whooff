class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :groups, through: :subscriptions

  has_many :topics
end
