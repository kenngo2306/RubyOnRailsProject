# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

refreshContactTable = ->
#  $.getJSON "/allSitesByProjectID/" + $("#project_id").val(), {}, {json, response} ->
#    $siteTable = $("#sites_table")
  $("#contacts_table > tbody").html("");
  return

ready = ->
  $('#create_site_button').click ->
#    alert 'delete clicked'
  $('.DataTables').DataTable()

  return

$(document).ready(ready)
$(document).on('page:load', ready)