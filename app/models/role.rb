class Role < ApplicationRecord
  validates :title, presence: true, uniqueness: true

  has_many :worship_service_roles
  has_many :members, through: :worship_service_roles
end
