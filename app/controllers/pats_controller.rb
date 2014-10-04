class PatsController < ApplicationController
  before_action :set_pat, only: [:show, :edit, :update, :destroy]

  # GET /pats
  # GET /pats.json
  def index
     # @myPat = Pat.includes(:for_select)
     # @q = @myPat.search(params[:q])
     @q = Pat.search(params[:q])   
     @pats = @q.result.page(params[:page]).per(15)

    @totNumber = Pat.all.count
    @searchNumber = @q.result.count

    # Generate the 2d array needed for grouped select in view
    @grouped_options = Pat.GroupedSelect('ward', ForSelect)


    respond_to do |format|
      format.html { render action: 'index' }
      format.js {}
    end
  end

  def complex

    if params[:PatNumber] == nil
      params.merge!(PatNumber: 15)
    end
    @q = Pat.search(params[:q])      
    @pats = @q.result.page(params[:page]).per(params[:PatNumber])
    @q.build_condition  
    @q.build_sort if @q.sorts.empty?

    @totNumber = Pat.all.count
    @searchNumber = @q.result.count

    # Generate the 2d array needed for grouped select in view
    @grouped_options = Pat.GroupedSelect('ward', ForSelect)

    respond_to do |format|
      format.html {}
      format.xls {}
    end
    
  end

  # GET /pats/1
  # GET /pats/1.json
  def show
  end

  # GET /pats/new
  def new
    @pat = Pat.new
        # @forSelect = ForSelect.all
        #                   .where(code: 'ward')
        #                   .order(option_order: :asc)  
        # # @grouped_options = ForSelect.grouped_options(@forSelect)
        # @grouped_options = GroupedOptions.grouped_options(@forSelect)
    respond_to do |format|
      format.html { render action: 'new' }
      format.js { render "new_edit" }
    end
  end

  # GET /pats/1/edit
  def edit
    respond_to do |format|
      format.html { render action: 'edit' }
      format.js { render "new_edit" }
    end
  end

  # POST /pats
  # POST /pats.json
  def create
    @pat = Pat.new(pat_params)

    # @forSelect = ForSelect.all
    #                       .where(code: 'ward')
    #                       .order(option_order: :asc)  
    # # @grouped_options = ForSelect.grouped_options(@forSelect)
    # @grouped_options = GroupedOptions.grouped_options(@forSelect)

    respond_to do |format|
      if @pat.save
        format.html { redirect_to @pat, notice: 'Pat was successfully created.' }
        format.js {render "update_create"}
        format.json { render action: 'show', status: :created, location: @pat }
      else
        format.html { render action: 'new' }
        format.json { render json: @pat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pats/1
  # PATCH/PUT /pats/1.json
  def update
    respond_to do |format|
      if @pat.update(pat_params)
        @q = Pat.search(params[:q])
        @pats = @q.result.page(params[:page]).per(15)
        format.html { redirect_to @pat, notice: 'Pat was successfully updated.' }
        format.js {render "update_create"}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pats/1
  # DELETE /pats/1.json
  def destroy
    @pat.destroy
    respond_to do |format|
      format.html { redirect_to pats_url }
      format.js {}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pat
      @pat = Pat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pat_params
      params.require(:pat).permit(:firstname, :lastname, :number, :facility_id, :ward, :doa, :dod, :dob)
    end
end
