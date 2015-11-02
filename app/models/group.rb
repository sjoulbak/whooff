class Group < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
