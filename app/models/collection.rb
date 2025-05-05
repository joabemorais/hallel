class Collection < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :abbreviation, presence: true, uniqueness: true

  has_many :song_collections
  has_many :songs, through: :song_collections
end
