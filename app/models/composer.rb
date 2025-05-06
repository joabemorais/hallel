class Composer < ApplicationRecord
  validates :name, presence: true

  has_many :song_composers, dependent: :destroy
  has_many :songs, through: :song_composers
end
