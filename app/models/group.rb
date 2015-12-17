class Group < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :subscriptions, :dependent => :destroy

  belongs_to :user
  has_many :comments, :dependent => :destroy

  validates :title,  :presence => true #:user_id,


  extend Dragonfly::Model
  dragonfly_accessor :image
end
