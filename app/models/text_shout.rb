class TextShout < ApplicationRecord
  validates :body, presence: true, length: { in:1 .. 144 }

  has_many :shouts, as: :content
end
