require 'rails_helper'

RSpec.describe "team_notes/new", type: :view do
  before(:each) do
    assign(:team_note, TeamNote.new(
      :team_id => 1,
      :note_id => 1
    ))
  end

  it "renders new team_note form" do
    render

    assert_select "form[action=?][method=?]", team_notes_path, "post" do

      assert_select "input#team_note_team_id[name=?]", "team_note[team_id]"

      assert_select "input#team_note_note_id[name=?]", "team_note[note_id]"
    end
  end
end
