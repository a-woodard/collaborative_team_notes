# require "spec_helper"
require "rails_helper"

RSpec.describe User, type: :model do
  describe "model configuration" do
    context "spec" do
      it "has a valid factory" do
        expect(FactoryGirl.create(:user)).to be_valid
      end

      it "provides an invalid factory" do
        expect(FactoryGirl.build(:invalid_user)).to_not be_valid
      end
    end

    context "validations" do
      it "requires at least 4 characters" do
        expect(FactoryGirl.build(:invalid_user).errors.size).to eq(2)
      end
    end

    context "associations" do
    end

  end
end