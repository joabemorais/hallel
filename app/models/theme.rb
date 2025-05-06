class Theme < ApplicationRecord
  validates :name, presence: true

  has_many :song_themes, dependent: :destroy
  has_many :songs, through: :song_themes
end
