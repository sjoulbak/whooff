class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :subscriptions
  has_many :groups, through: :subscriptions
  has_many :topics, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  validates_inclusion_of :premium, in: [true, false]

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes["password"] }
  validates :password, confirmation: true, if: -> { new_record? || changes["password"] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes["password"] }

  validates :email, uniqueness: true
end
