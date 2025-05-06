require 'rails_helper'

RSpec.describe WorshipServiceSong, type: :model do
  describe "associations" do
    it { should belong_to(:song) }
    it { should belong_to(:worship_service) }
    it { should belong_to(:service_part) }
  end
end
