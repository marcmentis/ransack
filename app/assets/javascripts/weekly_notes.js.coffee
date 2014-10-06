# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # STYLE
  $('#meeting_date, #sPreviousMeetings').prop('disabled', true)


  # SELECTS
  $('#s_weekly_ward').change ->
    $('#meeting_date, #sPreviousMeetings').prop('disabled', false)
    $('#pat_search').submit()
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
  
