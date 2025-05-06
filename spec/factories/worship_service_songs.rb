# frozen_string_literal: true

FactoryBot.define do
  factory :worship_service_song do
    song
    worship_service
    service_part
  end
end
