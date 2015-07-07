require 'rails_helper'

RSpec.describe Team, type: :model do


    before(:each) do
        # @team = FactoryGirl.create(:team)
        # @team_notes = FactoryGirl.create(:team_notes)
        # @note = FactoryGirl.create(:note)

    end

    # it "has a valid factory" do
    #     expect(FactoryGirl.create(:team)).to be_valid
    # end


    it "can get all of the notes for a team" do

        t = Team.new
        t.name = "myteamname"
        t.save


        n = Note.new
        n.image = "aaaboat.png"
        n.title = "my vacation"
        n.content = "This is what I did."
        n.save

        tn = TeamNote.new
        tn.team_id = t.id
        tn.note_id = n.id
        tn.save


        t = Team.find(t.id)
        t.notes.count



        expect(t.notes.count).to eq(1)
    end




end
