class Topic < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :users, through: :comments
  has_many :comments, :dependent => :destroy

  validates :title, :text,  :presence => true #:user_id,
end
