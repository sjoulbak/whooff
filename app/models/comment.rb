class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  belongs_to :topic
  validates :text, :user_id, :presence => true

  # Custom validation: a Comment need to have a user and a group or a topic.
end
