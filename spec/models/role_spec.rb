require 'rails_helper'

RSpec.describe Role, type: :model do
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
  end

  describe "associations" do
    it { should have_many(:worship_service_roles) }
    it { should have_many(:members).through(:worship_service_roles) }
  end
end
