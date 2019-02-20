class CharacterNotesController < ApplicationController
  before_action :set_character_note, only: [:show, :edit, :update, :destroy]

  # GET /character_notes
  # GET /character_notes.json
  def index
    @character_notes = CharacterNote.all
  end

  # GET /character_notes/1
  # GET /character_notes/1.json
  def show
  end

  # GET /character_notes/new
  def new
    @character_note = CharacterNote.new
  end

  # GET /character_notes/1/edit
  def edit
  end

  # POST /character_notes
  # POST /character_notes.json
  def create
    @character_note = CharacterNote.new(character_note_params)

    respond_to do |format|
      if @character_note.save
        format.html { redirect_to @character_note, notice: 'Character note was successfully created.' }
        format.json { render :show, status: :created, location: @character_note }
      else
        format.html { render :new }
        format.json { render json: @character_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_notes/1
  # PATCH/PUT /character_notes/1.json
  def update
    respond_to do |format|
      if @character_note.update(character_note_params)
        format.html { redirect_to @character_note, notice: 'Character note was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_note }
      else
        format.html { render :edit }
        format.json { render json: @character_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_notes/1
  # DELETE /character_notes/1.json
  def destroy
    @character_note.destroy
    respond_to do |format|
      format.html { redirect_to character_notes_url, notice: 'Character note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_note
      @character_note = CharacterNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_note_params
      params.require(:character_note).permit(:character_id, :title, :body)
    end
end
