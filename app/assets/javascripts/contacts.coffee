$(document).ready ->
  $("#new_contact").on("ajax:success", (e, data, status, xhr) ->

  ).on "ajax:error", (e, xhr, status, error) ->
    msg = jQuery.parseJSON(xhr.responseText)
    error = "Error: \r\n"
    $.each msg, (key, value) ->
      error = error + key + ' ' + value + '\r\n'
      return
    alert error
    console.log(e, xhr,status, error)


  $('#next').click ->
    $('.fieldset_Contact_Type').hide()
    $('.fieldset_Contact_Information').show()
    return
  $('#next2').click ->
    $('.fieldset_Contact_Information').hide()
    $('.fieldset_Contact_Location').show()
    return
      # enable chosen js

  return



