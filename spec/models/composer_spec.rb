require 'rails_helper'

RSpec.describe Composer, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end

  describe "associations" do
    it { should have_many(:song_composers).dependent(:destroy) }
    it { should have_many(:songs).through(:song_composers) }
  end
end
