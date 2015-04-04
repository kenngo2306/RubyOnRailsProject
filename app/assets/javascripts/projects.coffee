# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

refreshSiteTable = ->
#  $.getJSON "/allSitesByProjectID/" + $("#project_id").val(), {}, {json, response} ->
#    $siteTable = $("#sites_table")
  $("#sites_table > tbody").html("");
  return

ready = ->
  $('.datepicker').datepicker(dateFormat: 'yy-mm-dd')
  $('#create_site_button').click ->
    alert 'delete clicked'
    refreshSiteTable()
  $('.DataTables').DataTable()

  return




$(document).ready(ready)
$(document).on('page:load', ready)