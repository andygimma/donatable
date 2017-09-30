require 'spec_helper'
require 'faker'

module Donatable
  RSpec.describe Organization, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:donatable_organization)).to be_valid
    end

    it "is invalid without a name" do
      sheet = FactoryGirl.build(:donatable_organization, name: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a website" do
      sheet = FactoryGirl.build(:donatable_organization, website: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a short_description" do
      sheet = FactoryGirl.build(:donatable_organization, short_description: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a long_description" do
      sheet = FactoryGirl.build(:donatable_organization, long_description: nil)
      expect(sheet).not_to be_valid
    end

    it "is invalid without a unique name" do
      same_name = "same_name"
      sheet1 = FactoryGirl.create(:donatable_organization, name: same_name)
      sheet2 = FactoryGirl.build(:donatable_organization, name: same_name)

      expect(sheet1).to be_valid
      expect(sheet2).not_to be_valid
    end

    it "is invalid without a unique website" do
      website = "website"
      sheet1 = FactoryGirl.create(:donatable_organization, name: website)
      sheet2 = FactoryGirl.build(:donatable_organization, name: website)

      expect(sheet1).to be_valid
      expect(sheet2).not_to be_valid
    end
  end
end
