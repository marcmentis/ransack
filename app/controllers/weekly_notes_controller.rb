class WeeklyNotesController < ApplicationController
  before_action :set_weekly_note, only: [:show, :edit, :update, :destroy]
  # skip_before_action :verify_authenticity_token


  def presentation
    @q = Pat.search(params[:q])   
    @pats = @q.result.page(params[:page]).per(15)

    @totNumber = Pat.all.count
    @searchNumber = @q.result.count
    
  end

  # GET /weekly_notes
  # GET /weekly_notes.json
  def index
    @weekly_notes = WeeklyNote.all
  end

  # GET /weekly_notes/1
  # GET /weekly_notes/1.json
  def show
  end

  # GET /weekly_notes/new
  def new

    @weekly_note = WeeklyNote.new
    @pat = Pat.find(1)

    respond_to do |format|
      format.html {render action: 'new'}
      format.js { render "new_edit"}
    end
  end

  # GET /weekly_notes/1/edit
  def edit
    @pat = Pat.find(1)
  end

  # POST /weekly_notes
  # POST /weekly_notes.json
  def create
# byebug
    @weekly_note = WeeklyNote.new(weekly_note_params)

    respond_to do |format|
      if @weekly_note.save
        format.html { redirect_to @weekly_note, notice: 'Weekly note was successfully created.' }
        format.js { render "update_create" }
        format.json { render action: 'show', status: :created, location: @weekly_note }
      else
        format.html { render action: 'new' }
        format.js { render plain: "Create error"}
        format.json { render json: @weekly_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_notes/1
  # PATCH/PUT /weekly_notes/1.json
  def update
    respond_to do |format|
      if @weekly_note.update(weekly_note_params)
        format.html { redirect_to @weekly_note, notice: 'Weekly note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @weekly_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_notes/1
  # DELETE /weekly_notes/1.json
  def destroy
    @weekly_note.destroy
    respond_to do |format|
      format.html { redirect_to weekly_notes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_note
      @weekly_note = WeeklyNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_note_params
      params.require(:weekly_note).permit(:pat_id, :danger_yn, :drugs_last_changed, :drugs_not_why, :drugs_change_why, :meeting_date)
    end

end