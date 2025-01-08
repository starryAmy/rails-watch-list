class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie_id, presence: true, uniqueness: { scope: :list_id, message: "Movie and List pair must be unique"}
  validates :list_id, presence: true

  belongs_to :movie
  belongs_to :list
end
