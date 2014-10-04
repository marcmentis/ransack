# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # STYLE
  $('#meeting_date').hide()


  # SELECTS
  $('#s_weekly_ward').change ->
    value = $('#s_weekly_ward').val()
    $('#q_ward_cont').val(value)
    $('#pat_search').submit()
    $('#meeting_date').show()
    # alert 'after submit'

  # DATEPICKERS
  $('#meeting_date').change ->
  	# alert 'change the date'
  	$('#pat_search').submit()





    # $('#pat_search').submit (event) ->
    #   alert 'submit form'
  
