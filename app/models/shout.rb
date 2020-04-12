class Shout < ApplicationRecord
  validates :user, presence: true

  belongs_to :user
  delegate :username, to: :user

  belongs_to :content, polymorphic: true

  scope :search, -> (term:) {
    joins("LEFT JOIN text_shouts ON content_type = 'TextShout' AND content_id = text_shouts.id").
        where("text_shouts.body LIKE ?", "%##{term}%")
  }

end
