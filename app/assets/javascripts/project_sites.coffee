# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('.DataTables').DataTable()
  return
$(document).ready ->
  $("#new_project_site").on("ajax:success", (e, data, status, xhr) ->

  ).on "ajax:error", (e, xhr, status, error) ->
    console.log(e, xhr,status, error)

