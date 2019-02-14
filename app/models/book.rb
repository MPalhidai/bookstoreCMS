class Book < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { in: 2..50 }, uniqueness: { case_sensitive: false }
  validates :author, presence: true, length: { in: 2..50 }
  validates :category, presence: true
  validates :current_page, presence: true
  validates :current_chapter, presence: true
  validates :total_pages, presence: true
end
