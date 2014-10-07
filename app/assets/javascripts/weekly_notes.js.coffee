# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # STYLE
  #$('#divFPat_Search').hide()
  # $('#meeting_date, #sPreviousMeetings').prop('disabled', true)


  # SELECTS
  $('#s_weekly_ward').change ->
    $('#divFPat_Search').show()
    $('#meeting_date').val("")
    $('#fMeetings').submit()
    $('#t_ward').val($(this).val())

    # $('#meeting_date, #sPreviousMeetings').prop('disabled', false)
    # $('#meeting_date').show()
    # alert 'after submit'

  $('#sPreviousMeetings').change ->
    alert 'previous meetings'

  # DATEPICKERS
  $('#meeting_date').change ->
  	# alert 'change the date'
  	$('#sPreviousMeetings').val("")
  	$('#pat_search').submit()






    # $('#pat_search').submit (event) ->
    #   alert 'submit form'
  
