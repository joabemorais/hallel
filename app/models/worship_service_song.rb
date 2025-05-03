class WorshipServiceSong < ApplicationRecord
  belongs_to :worship_service
  belongs_to :song
  belongs_to :service_part
end
