require 'spec_helper'
require 'faker'

module Donatable
  RSpec.describe Organization, type: :model do
    it "has a valid factory" do
      expect(FactoryGirl.build(:donatable_organization)).to be_valid
    end
  end
end
