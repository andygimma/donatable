require 'spec_helper'
require 'faker'

module Donatable
  RSpec.describe Organization, type: :model do
    it 'has a valid factory' do
      expect(FactoryGirl.build(:donatable_organization)).to be_valid
    end

    # it 'is invalid without a name' do
    #   sheet = FactoryGirl.build(:donatable_organization, name: nil)
    #   expect(sheet).not_to be_valid
    # end

    it 'is invalid without a website' do
      sheet = FactoryGirl.build(:donatable_organization, website: nil)
      expect(sheet).not_to be_valid
    end

    it 'is invalid without a short_description' do
      sheet = FactoryGirl.build(:donatable_organization, short_description: nil)
      expect(sheet).not_to be_valid
    end

    it 'is invalid without a long_description' do
      sheet = FactoryGirl.build(:donatable_organization, long_description: nil)
      expect(sheet).not_to be_valid
    end

    it 'is valid without a unique name if the languages are different' do
      same_name = 'same_name'
      lang1 = 'es'
      lang2 = 'en'
      sheet1 = FactoryGirl.create(:donatable_organization, name: same_name, language: lang1)
      sheet2 = FactoryGirl.build(:donatable_organization, name: same_name, language: lang2)

      expect(sheet1).to be_valid
      expect(sheet2).to be_valid
    end

    it 'is invalid without a unique name for a given language' do
      same_name = 'same_name'
      lang = 'es'
      sheet1 = FactoryGirl.create(:donatable_organization, name: same_name, language: lang)
      sheet2 = FactoryGirl.build(:donatable_organization, name: same_name, language: lang)

      expect(sheet1).to be_valid
      expect(sheet2).not_to be_valid
    end

    it 'is valid without a unique websitewebsite if the languages are different' do
      same_site = 'same_site'
      lang1 = 'es'
      lang2 = 'en'
      sheet1 = FactoryGirl.create(:donatable_organization, website: same_site, language: lang1)
      sheet2 = FactoryGirl.build(:donatable_organization, website: same_site, language: lang2)

      expect(sheet1).to be_valid
      expect(sheet2).to be_valid
    end

    it 'is invalid without a unique website for a given language' do
      website = 'website'
      lang = 'es'
      sheet1 = FactoryGirl.create(:donatable_organization, name: website, language: lang)
      sheet2 = FactoryGirl.build(:donatable_organization, name: website, language: lang)

      expect(sheet1).to be_valid
      expect(sheet2).not_to be_valid
    end
  end
end
