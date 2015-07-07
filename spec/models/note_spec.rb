require "rails_helper"

RSpec.describe Note, :type => :model do

    before(:each) do
        @note = FactoryGirl.create(:note)

        # setup database info
    end

    it "has a valid factory" do
        expect(FactoryGirl.create(:note)).to be_valid
    end

    it "will cammelcase strings" do
        expect(Note.cammelcase_this_string(@note.image)).to eq('Boat.png')
        expect(Note.cammelcase_this_string(@note.title)).to eq('My vacation')
    end





end

