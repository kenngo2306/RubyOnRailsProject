# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("#new_project_type_information").on("ajax:success", (e, data, status, xhr) ->
    console.log('ajax success')
  ).on "ajax:error", (e, xhr, status, error) ->
    console.log(error)