require 'rails_helper'

RSpec.describe "team_notes/index", type: :view do
  before(:each) do
    assign(:team_notes, [
      TeamNote.create!(
        :team_id => 1,
        :note_id => 2
      ),
      TeamNote.create!(
        :team_id => 1,
        :note_id => 2
      )
    ])
  end

  it "renders a list of team_notes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
