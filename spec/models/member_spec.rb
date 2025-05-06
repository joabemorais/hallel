require 'rails_helper'

RSpec.describe Member, type: :model do
  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end

  describe "associations" do
    it { should have_many(:worship_service_roles) }
    it { should have_many(:roles).through(:worship_service_roles) }
  end
end
