require "rails_helper"

RSpec.describe Collection, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      collection = build(:collection)
      expect(collection).to be_valid
    end

    it "is invalid without a name" do
      collection = build(:collection, name: nil)
      expect(collection).not_to be_valid
      expect(collection.errors[:name]).to include("can't be blank")
    end

    it "is invalid without an abbreviation" do
      collection = build(:collection, abbreviation: nil)
      expect(collection).not_to be_valid
      expect(collection.errors[:abbreviation]).to include("can't be blank")
    end

    it "is invalid with a non-unique name" do
      create(:collection, name: "Unique Collection")
      collection = build(:collection, name: "Unique Collection")
      expect(collection).not_to be_valid
      expect(collection.errors[:name]).to include("has already been taken")
    end

    it "is invalid with a non-unique abbreviation" do
      create(:collection, abbreviation: "UC")
      collection = build(:collection, abbreviation: "UC")
      expect(collection).not_to be_valid
      expect(collection.errors[:abbreviation]).to include("has already been taken")
    end
  end

  describe "associations" do
    it { should have_many(:song_collections) }
    it { should have_many(:songs).through(:song_collections) }
  end
end
