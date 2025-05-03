class SongComposer < ApplicationRecord
  belongs_to :song
  belongs_to :composer
end
