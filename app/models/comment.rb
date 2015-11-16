class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :topic
  validates :text, :user_id, :presence => true
end
