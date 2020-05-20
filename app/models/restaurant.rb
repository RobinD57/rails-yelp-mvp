class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)

  has_many :reviews, dependent: :destroy
  validates :address, presence: true, uniqueness: true
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
