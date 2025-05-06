require 'rails_helper'

RSpec.describe SongCollection, type: :model do
  describe "validations" do
    it "validates uniqueness of item_number scoped to collection_id" do
      collection = create(:collection)
      song1 = create(:song)
      song2 = create(:song)

      create(:song_collection, item_number: 1, collection: collection, song: song1)

      duplicate_song_collection = build(:song_collection, item_number: 1, collection: collection, song: song2)

      expect(duplicate_song_collection).not_to be_valid
      expect(duplicate_song_collection.errors[:item_number]).to include("has already been taken")
    end

    it "is valid with unique item_number for different collections" do
      collection1 = create(:collection, abbreviation: "TC1")
      collection2 = create(:collection, abbreviation: "TC2")
      song = create(:song)

      create(:song_collection, item_number: 1, collection: collection1, song: song)

      duplicate_song_collection = build(:song_collection, item_number: 1, collection: collection2, song: song)

      expect(duplicate_song_collection).to be_valid
    end
  end
end
