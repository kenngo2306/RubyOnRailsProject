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

  $('#contact_contact_type_id').change ->
#    alert 'changed!'
    val = $('#contact_contact_type_id').val()
    if(val>1)
      $('#contact_client_id').hide()
      $('#client_label').hide()
      $('#contact_client_id').val('')
    else if (val = 1)
      $('#contact_client_id').show()
      $('#client_label').show()
      $("#contact_client_id option[value='1']").attr 'selected', true
    return

  return



