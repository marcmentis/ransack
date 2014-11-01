class WeeklyNotesController < ApplicationController
  # before_action :set_weekly_note, only: [:show, :edit, :update, :destroy]
  before_action :set_weekly_note, only: [:show, :update, :destroy]

  # GET/POST /weekly_notes/presentation(.:format)
  def presentation
    if params[:s_weekly_ward].nil?
      # Generate the 2d array needed for grouped select in view
      @grouped_options = Pat.GroupedSelect('ward', ForSelect)
    end

    @all_done = []
    @all_to_do = []
    @meeting_date = WeeklyNote.select(:meeting_date).distinct.joins(:pat)
                              .where(pats: {ward: params[:s_weekly_ward]})
                              .order(meeting_date: :desc)
 # byebug 
    @meeting_date.to_a.map! {|meeting| meeting.meeting_date.strftime('%F')}
    # @meeting_date.to_a

    respond_to do |format|
      format.html {}
      format.js {}
    end
    
  end

  # GET weekly_notes/meetings(.:format)
  def meetings
    # byebug
    all_lists = WeeklyNote.get_pat_lists(params)
    @all_done = all_lists[:pat_all_done]
    @all_to_do = all_lists[:pat_all_to_do]
    @chosen_date = all_lists[:meeting_date]

    respond_to do |format|
      format.html {}
      format.js {}
    end
    
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
    # byebug
    @weekly_note = WeeklyNote.new
    @pat = Pat.find(1)

    respond_to do |format|
      format.html {render action: 'new'}
      format.js { render "new_edit"}
    end
  end

  def new_with_pat
    @weekly_note = WeeklyNote.new
    @pat = Pat.find(params[:id])
    # Get all meeting notes for patient
    @pat_notes = WeeklyNote.joins(:pat)
                          .where(weekly_notes: {pat_id: @pat[:id]})
                          .order(meeting_date: :desc)

    # Get CollectionsForSelect for drug and group selects
    @drug_collection = Pat.CollectionForSelect('drugs_changed', ForSelect)

    respond_to do |format|
      format.html {render action: 'new'}
      format.js { render "new_edit"}
    end
  end

  # GET /weekly_notes/1/edit
  def edit
    @pat = Pat.find(params[:id])
    # Need to add .first to convert ActionRecord Relation to object
      # _form needs an object passed to it
    @weekly_note = WeeklyNote.joins(:pat)
                              .where(pats: {id: params[:id]})
                              .where(weekly_notes: {meeting_date: params[:chosen_date]})
                              .first
    # Get all meeting notes for patient
    @pat_notes = WeeklyNote.joins(:pat)
                          .where(weekly_notes: {pat_id: @pat[:id]})
                          .order(meeting_date: :desc)

    # Get CollectionsForSelect for drug and group selects
    @drug_collection = Pat.CollectionForSelect('drugs_changed', ForSelect)
# byebug
    respond_to do |format|
      format.html {render action: 'new'}
      format.js { render "new_edit"}
    end
  end

  # POST /weekly_notes
  # POST /weekly_notes.json
  def create
# byebug
    @weekly_note = WeeklyNote.new(weekly_note_params)

    respond_to do |format|
      if @weekly_note.save
        format.html { redirect_to @weekly_note, notice: 'Weekly note was successfully created.' }
        # Added params to .js redirect. 
          # Made meeting_date = to sPreviousMeetings as that is first condition tested in action 'meetings'
        format.js { redirect_to action: 'meetings', t_ward: params[:th_ward], sPreviousMeetings: weekly_note_params[:meeting_date]}
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
# byebug
    respond_to do |format|
      if @weekly_note.update(weekly_note_params)
        format.html { redirect_to @weekly_note, notice: 'Weekly note was successfully updated.' }
        format.js { redirect_to action: 'meetings', t_ward: params[:th_ward], sPreviousMeetings: weekly_note_params[:meeting_date]}
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
      params.require(:weekly_note).permit(:pat_id, :danger_yn, :drugs_last_changed, :drugs_not_why, 
        :drugs_change_why, :meeting_date, :pre_date_yesno, :pre_date_no_why, :date_pre)
    end

end
