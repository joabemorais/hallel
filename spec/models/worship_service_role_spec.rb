require 'rails_helper'

RSpec.describe WorshipServiceRole, type: :model do
  describe "associations" do
    it { should belong_to(:worship_service) }
    it { should belong_to(:member) }
    it { should belong_to(:role) }
  end
end
