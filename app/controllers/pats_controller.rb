class PatsController < ApplicationController
  before_action :set_pat, only: [:show, :edit, :update, :destroy]

  # GET /pats
  # GET /pats.json
  def index
    @q = Pat.search(params[:q])
    @pats = @q.result.page(params[:page]).per(15)
    @totNumber = Pat.all.count
    @searchNumber = @q.result.count
    @forSelect = ForSelect.all  # Where code = something, order by grouper
    @grouped_options_array =  [
      ['Bld82',
        [['82/101', '82/101'],['82/102', '82/102']]
      ],
      ['Bld81',
        [['81/201', '81/201'], ['81/202', '81/202'], ['81/301', '81/301']]
      ]
                        ]

    @grouped_options_hash = {
      'Bld82' => [['82/101', '82/101'], ['82/102', '82/102']],
      'Bld25' => [['25/2N', '25/2N'], ['25/2S', '25/2S'], ['25/3N', '25/3N']]
    }   

    @last_grp = [@forSelect.first.grouper]
    @this_grp = []
    @valText = []
    @grouped_options = []

    @forSelect.each do |e|
# byebug
      @this_grp = [e.grouper]
      if @last_grp == @this_grp        
         this_valText = [e.value, e.text]
         @valText.push this_valText
      elsif @last_grp != @this_grp
        @grouped_array = @last_grp.push @valText
        @grouped_options.push @grouped_array
        @valText = []
      end
      @last_grp = @this_grp
    end                 

    # @pat = Pat.new
  end

  # GET /pats/1
  # GET /pats/1.json
  def show
  end

  # GET /pats/new
  def new
    @pat = Pat.new
    respond_to do |format|
      format.html { render action: 'new' }
      format.js {}
    end
  end

  # GET /pats/1/edit
  def edit
    respond_to do |format|
      format.html { render action: 'edit' }
      format.js {}
    end
  end

  # POST /pats
  # POST /pats.json
  def create
    @pat = Pat.new(pat_params)

    respond_to do |format|
      if @pat.save
        format.html { redirect_to @pat, notice: 'Pat was successfully created.' }
        format.js {}
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
        format.js {}
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
      params.require(:pat).permit(:firstname, :lastname, :number)
    end
end
