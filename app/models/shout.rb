class Shout < ApplicationRecord
  validates :user, presence: true

  belongs_to :user
  delegate :username, to: :user

  belongs_to :content, polymorphic: true

end
