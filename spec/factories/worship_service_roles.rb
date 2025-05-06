# frozen_string_literal: true

FactoryBot.define do
  factory :worship_service_role do
    worship_service
    member
    role
  end
end
