class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :title, :text, :user_id, :presence => true
end
