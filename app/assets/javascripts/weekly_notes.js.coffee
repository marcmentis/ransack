# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->

  # SELECTS
  $('#s_weekly_ward').change ->
    value = $('#s_weekly_ward').val()
    $('#q_ward_cont').val(value)
    # alert 'after insertion'
    $('#pat_search').submit()
    # alert 'after submit'





    # $('#pat_search').submit (event) ->
    #   alert 'submit form'
  
