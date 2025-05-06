class WorshipService < ApplicationRecord
  belongs_to :occasion

  has_many :worship_service_songs
  has_many :songs, through: :worship_service_songs

  has_many :worship_service_roles

  validates :date, presence: true
end
