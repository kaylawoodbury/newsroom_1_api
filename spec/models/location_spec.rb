require 'rails_helper'

RSpec.describe Location, type: :model do
  describe "Location has db columns" do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :country }
    it { is_expected.to have_db_column :lat }
    it { is_expected.to have_db_column :long }
  end

  describe "Factory" do
    it "Should have valid factory" do
      expect(create(:location)).to be_valid
    end
  end
end
