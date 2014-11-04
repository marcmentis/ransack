class ClinTrackersController < ApplicationController
  def index
# byebug
  	all_filter = WeeklyNote.filter_notes(params)

	# @myPat = Pat.includes(:for_select)
	# @q = @myPat.search(params[:q])
	@q = all_filter.search(params[:q])   
	@filter_notes = @q.result.page(params[:page]).per(15)

    @totNumber = all_filter.all.count
    @searchNumber = @q.result.count
  end

  def someting_else
  	# byebug
  	all_filter = WeeklyNote.filter_notes(params)

  	 # @myPat = Pat.includes(:for_select)
     # @q = @myPat.search(params[:q])
     @q = all_filter.search(params[:q])   
     @filter_notes = @q.result.page(params[:page]).per(15)

    @totNumber = all_filter.all.count
    @searchNumber = @q.result.count
  end
end
