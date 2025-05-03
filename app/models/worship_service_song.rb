class WorshipServiceSong < ApplicationRecord
  belongs_to :service
  belongs_to :song
  belongs_to :service_part
end
