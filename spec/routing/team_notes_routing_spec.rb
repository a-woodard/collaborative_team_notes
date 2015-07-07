require "rails_helper"

RSpec.describe TeamNotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/team_notes").to route_to("team_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/team_notes/new").to route_to("team_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/team_notes/1").to route_to("team_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/team_notes/1/edit").to route_to("team_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/team_notes").to route_to("team_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/team_notes/1").to route_to("team_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/team_notes/1").to route_to("team_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/team_notes/1").to route_to("team_notes#destroy", :id => "1")
    end

  end
end
