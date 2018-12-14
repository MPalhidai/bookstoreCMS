class Comment < ApplicationRecord
  belongs_to :book

  validates :user, presence: true, length: { in: 2..64 }
  validates :rating, presence: true, range: { in: 0..100 }
  validates :content, presence: true, length: { in: 2..256 }
end
