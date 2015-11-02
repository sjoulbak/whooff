class Topic < ActiveRecord::Base
  belongs_to :user_id
  has_many :comments
end
