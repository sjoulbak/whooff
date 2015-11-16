class Topic < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :users, through: :comments
  has_many :comments, :dependent => :destroy

  validates :title, :text, :user_id, :presence => true
end
