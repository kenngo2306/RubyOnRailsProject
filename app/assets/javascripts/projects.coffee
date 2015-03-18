# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = ->
  $('.DataTables').DataTable()

  $('.datepicker').datepicker(
    dateFormat: 'yy-mm-dd'
  )
  return

$(document).ready(ready)
$(document).on('page:load', ready)