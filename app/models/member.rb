class Member < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :worship_service_roles
  has_many :roles, through: :worship_service_roles
end
