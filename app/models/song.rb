class Song < ApplicationRecord
  validates :title, presence: true
  validates :times_sung_count, numericality: { only_integer: true }, allow_nil: true

  has_many :song_composers
  has_many :composers, through: :song_composers
  has_many :song_themes
  has_many :themes, through: :song_themes
  has_many :worship_service_songs
  has_many :worship_services, through: :worship_service_songs
  has_many :song_collections
  has_many :collections, through: :song_collections
end
