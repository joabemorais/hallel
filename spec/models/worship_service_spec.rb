require 'rails_helper'

RSpec.describe WorshipService, type: :model do
  describe "associations" do
    it { should belong_to(:occasion) }
    it { should have_many(:worship_service_songs) }
    it { should have_many(:songs).through(:worship_service_songs) }
    it { should have_many(:worship_service_roles) }
  end

  describe "validations" do
    it { should validate_presence_of(:date) }
  end
end
