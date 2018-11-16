class Book < ApplicationRecord
  validates :title, presence: true, length: { in: 2..50 }, uniqueness: { case_sensitive: false }
  validates :author, presence: true, length: { in: 2..50 }
  validates :complete, presence: true, inclusion: { in: 0..100 }
  validates :category, presence: true
end
