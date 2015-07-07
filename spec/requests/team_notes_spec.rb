require 'rails_helper'

RSpec.describe "TeamNotes", type: :request do
  describe "GET /team_notes" do
    it "works! (now write some real specs)" do
      get team_notes_path
      expect(response).to have_http_status(200)
    end
  end
end
