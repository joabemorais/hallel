class Song < ApplicationRecord
  has_many :song_composers
  has_many :composers, through: :song_composers

  has_many :song_themes
  has_many :themes, through: :song_themes

  has_many :worship_service_songs
  has_many :worship_services, through: :worship_service_songs

  has_many :song_collections
  has_many :collections, through: :song_collections
end
