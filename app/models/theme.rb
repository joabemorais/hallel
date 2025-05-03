class Theme < ApplicationRecord
  has_many :song_themes
  has_many :songs, through: :song_themes
end
