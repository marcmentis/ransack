# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "ready", ->
  # alert('rails change')
  # $('#ward_id').click ->
  #   alert('in click')
  # $('#bNew').click ->
    # alert('coffee button')
  # $('#divForm').hide()

# FUNCTIONS / CONSTANTS

# STYLE

# BUTTONS
  $('#sWard').change ->
    value = $('#sWard').val()
    alert(value)

  # $('#bSubmit').click ->
  #   alert 'bSubmit'
  #   return 'false'
#FORMS
  $('#bNew').on("ajax:beforeSend", (e, data, status, xhr) ->
      # alert 'this is before send'
    ).on("ajax:success", (e, data, status ,xhr) ->
      # alert 'after success'
      document.getElementById('divAppendGroupSelect').appendChild(document.getElementById('divGroupSelect'));
    ).bind "ajax:error", (e, xhr, status, error) ->
      alert 'this was a failure'

  $('.lEdit').on("ajax:beforeSend", (e, data, status, xhr) ->
      alert 'this is before send'
    ).on("ajax:success", (e, data, status ,xhr) ->
      # alert 'after success'  
      document.getElementById('divAppendGroupSelect').appendChild(document.getElementById('divGroupSelect'));  
    ).bind "ajax:error", (e, xhr, status, error) ->
      alert 'this was a failure'

  # $('#bSubmit').on("ajax:beforeSend", (e, data, status, xhr) ->
  #     alert 'this is before bSubmit send'
  #   ).on("ajax:success", (e, data, status ,xhr) ->
  #     alert 'after success'  
  #   ).bind "ajax:error", (e, xhr, status, error) ->
  #     alert 'this was a failure'       

# RUN ON PAGE READY
  # alert 'page ready'
  #$('#divForm').hide()


