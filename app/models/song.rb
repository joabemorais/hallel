class Song < ApplicationRecord
  # Composers
  has_many :song_composers, dependent: :destroy
  has_many :composers, through: :song_composers
  # Themes
  has_many :song_themes, dependent: :destroy
  has_many :themes, through: :song_themes
  # Worship Services
  has_many :worship_service_songs, dependent: :destroy
  has_many :worship_services, through: :worship_service_songs
  # Collections
  has_many :song_collections, dependent: :destroy
  has_many :collections, through: :song_collections

  validates :title, presence: true
  validates :times_sung_count, numericality: { only_integer: true }, allow_nil: true
end
