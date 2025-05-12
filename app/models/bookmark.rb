class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe

  validates :comment, length: { minimum: 6, too_short: 'must have at least 6 characters' }
  validates :recipe_id, uniqueness: { scope: :category_id, message: 'is already bookmarked in this category' }
end
