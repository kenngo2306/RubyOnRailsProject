# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



ready = ->
  $(".datepicker").datepicker(

    dateFormat: "yy-mm-dd"
    defaultDate: new Date()
  ).attr "readonly", "readonly"


  $('.DataTables').DataTable()
  $('#contact_contact_type_id').change ->
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


$(document).ready(ready)
$(document).on('page:load', ready)