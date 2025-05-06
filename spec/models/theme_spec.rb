require 'rails_helper'

RSpec.describe Theme, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      theme = Theme.new(name: "Rock")
      expect(theme).to be_valid
    end

    it "is not valid without a name" do
      theme = Theme.new(name: nil)
      expect(theme).not_to be_valid
    end
  end

  describe "associations" do
    it { should have_many(:song_themes).dependent(:destroy) }
    it { should have_many(:songs).through(:song_themes) }
  end
end
