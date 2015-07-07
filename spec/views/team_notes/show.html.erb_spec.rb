require 'rails_helper'

RSpec.describe "team_notes/show", type: :view do
  before(:each) do
    @team_note = assign(:team_note, TeamNote.create!(
      :team_id => 1,
      :note_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
