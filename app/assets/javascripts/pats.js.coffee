# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# jQuery.fn.testFunction = ->
#   alert 'In fn'
#   this



$(document).on "ready", ->
  $('#divIndexHideWrapper').hide()
  # $('#new_pat').testFunction()


# FUNCTIONS / CONSTANTS

# STYLE

# SELECTS
  $('#q_ward_eq, #q_doa_gteq, #q_doa_lteq').change ->
    $('#fPat_filter').submit()


# BUTTONS
  # sWard ALWAYS in SCOPE as appended to non-changing DOM when forms change
  $('#sWard').change ->
    value = $('#sWard').val()
    # alert(value)
    # $('#tWard').val(value)


#FORMS
  # bNew ALWAYS in SCOPE as never overwritten
  # $('#bNew').on("ajax:beforeSend", (e, data, status, xhr) ->
  #     alert 'this is before send'
  #   ).on("ajax:success", (e, data, status ,xhr) ->
  #     alert 'after success'
  #     # $('#sWard').appendTo('#divFormSelectWrapper')
  #   ).bind "ajax:error", (e, xhr, status, error) ->
  #     alert 'this was a bNew failure'

# LOSES SCOPE AFTER FIRST TABLE AJAX CALL
  # $('.lEdit').on("ajax:beforeSend", (e, data, status, xhr) ->
  #     alert 'this is before send'
  #   ).on("ajax:success", (e, data, status ,xhr) ->
  #     alert 'after success' 
  #     $('#sWard').appendTo('#divFormSelectWrapper')
  #   ).bind "ajax:error", (e, xhr, status, error) ->
  #     alert 'this was a lEdit failure'

# NEVER IN SCOPE
  # $('.edit_pat').on("ajax:beforeSend", (e, data, status, xhr) ->
  #   alert 'this is before form send'
  # ).on("ajax:success", (e, data, status ,xhr) ->
  #   alert 'after form success' 
  # ).bind "ajax:error", (e, xhr, status, error) ->
  #   alert 'this was a lEdit failure'

  # $('#bSubmit').on("ajax:beforeSend", (e, data, status, xhr) ->
  #     alert 'this is before bSubmit send'
  #   ).on("ajax:success", (e, data, status ,xhr) ->
  #     alert 'after success'  
  #   ).bind "ajax:error", (e, xhr, status, error) ->
  #     alert 'this was a failure'       



