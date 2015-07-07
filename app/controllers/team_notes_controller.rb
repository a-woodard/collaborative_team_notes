class TeamNotesController < ApplicationController
  before_action :set_team_note, only: [:show, :edit, :update, :destroy]

  # GET /team_notes
  # GET /team_notes.json
  def index
    @team_notes = TeamNote.all
  end

  # GET /team_notes/1
  # GET /team_notes/1.json
  def show
  end

  # GET /team_notes/new
  def new
    @team_note = TeamNote.new
  end

  # GET /team_notes/1/edit
  def edit
  end

  # POST /team_notes
  # POST /team_notes.json
  def create
    @team_note = TeamNote.new(team_note_params)

    respond_to do |format|
      if @team_note.save
        format.html { redirect_to @team_note, notice: 'Team note was successfully created.' }
        format.json { render :show, status: :created, location: @team_note }
      else
        format.html { render :new }
        format.json { render json: @team_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_notes/1
  # PATCH/PUT /team_notes/1.json
  def update
    respond_to do |format|
      if @team_note.update(team_note_params)
        format.html { redirect_to @team_note, notice: 'Team note was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_note }
      else
        format.html { render :edit }
        format.json { render json: @team_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_notes/1
  # DELETE /team_notes/1.json
  def destroy
    @team_note.destroy
    respond_to do |format|
      format.html { redirect_to team_notes_url, notice: 'Team note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_note
      @team_note = TeamNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_note_params
      params.require(:team_note).permit(:team_id, :note_id)
    end
end
