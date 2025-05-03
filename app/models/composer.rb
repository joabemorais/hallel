class Composer < ApplicationRecord
  has_many :song_composers
  has_many :songs, through: :song_composers
end
