class SongTheme < ApplicationRecord
  belongs_to :song
  belongs_to :theme
end
