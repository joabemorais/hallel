require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'validations' do
    it 'is valid with valid attributes' do
      song = build(:song)
      expect(song).to be_valid
    end

    it 'is invalid without a title' do
      song = build(:song, title: nil)
      expect(song).not_to be_valid
      expect(song.errors[:title]).to include("can't be blank")
    end

    it 'is invalid with non-numeric times_sung_count' do
      song = build(:song, times_sung_count: 'many')
      expect(song).not_to be_valid
      expect(song.errors[:times_sung_count]).to include("is not a number")
    end
  end

  describe 'associations' do
    it { should have_many(:song_composers) }
    it { should have_many(:composers).through(:song_composers) }

    it { should have_many(:song_themes) }
    it { should have_many(:themes).through(:song_themes) }

    it { should have_many(:worship_service_songs) }
  end
end
