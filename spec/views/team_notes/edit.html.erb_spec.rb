require 'rails_helper'

RSpec.describe "team_notes/edit", type: :view do
  before(:each) do
    @team_note = assign(:team_note, TeamNote.create!(
      :team_id => 1,
      :note_id => 1
    ))
  end

  it "renders the edit team_note form" do
    render

    assert_select "form[action=?][method=?]", team_note_path(@team_note), "post" do

      assert_select "input#team_note_team_id[name=?]", "team_note[team_id]"

      assert_select "input#team_note_note_id[name=?]", "team_note[note_id]"
    end
  end
end
