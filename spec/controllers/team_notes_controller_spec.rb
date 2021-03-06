require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe TeamNotesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # TeamNote. As you add validations to TeamNote, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    # skip("Add a hash of attributes valid for your model")

    {:team_id => 4, :note_id => 7}



  }

  let(:invalid_attributes) {
    # skip("Add a hash of attributes invalid for your model")
    {:team_id => 40, :note_id => 70}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TeamNotesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all team_notes as @team_notes" do
      team_note = TeamNote.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:team_notes)).to eq([team_note])
    end
  end

  describe "GET #show" do
    it "assigns the requested team_note as @team_note" do
      team_note = TeamNote.create! valid_attributes
      get :show, {:id => team_note.to_param}, valid_session
      expect(assigns(:team_note)).to eq(team_note)
    end
  end

  describe "GET #new" do
    it "assigns a new team_note as @team_note" do
      get :new, {}, valid_session
      expect(assigns(:team_note)).to be_a_new(TeamNote)
    end
  end


  describe "POST #create" do
    context "with valid params" do
      it "creates a new TeamNote" do
        expect {
          post :create, {:team_note => valid_attributes}, valid_session
        }.to change(TeamNote, :count).by(1)
      end

      it "assigns a newly created team_note as @team_note" do
        post :create, {:team_note => valid_attributes}, valid_session
        expect(assigns(:team_note)).to be_a(TeamNote)
        expect(assigns(:team_note)).to be_persisted
      end

      it "redirects to the created team_note" do
        post :create, {:team_note => valid_attributes}, valid_session
        expect(response).to redirect_to(TeamNote.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved team_note as @team_note" do
        post :create, {:team_note => invalid_attributes}, valid_session
        expect(assigns(:team_note)).to be_a_new(TeamNote)
      end

      it "re-renders the 'new' template" do
        post :create, {:team_note => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end


  describe "DELETE #destroy" do
    it "destroys the requested team_note" do
      team_note = TeamNote.create! valid_attributes
      expect {
        delete :destroy, {:id => team_note.to_param}, valid_session
      }.to change(TeamNote, :count).by(-1)
    end

    it "redirects to the team_notes list" do
      team_note = TeamNote.create! valid_attributes
      delete :destroy, {:id => team_note.to_param}, valid_session
      expect(response).to redirect_to(team_notes_url)
    end
  end

end
