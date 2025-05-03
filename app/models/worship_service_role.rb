class WorshipServiceRole < ApplicationRecord
  belongs_to :worship_service
  belongs_to :member
  belongs_to :role
end
