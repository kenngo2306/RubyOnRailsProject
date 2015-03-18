# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery time


$(document).ready ->
  $('#next').click ->
    $('.fieldset_Contact_Type').hide()
    $('.fieldset_Contact_Information').show()
    return
  $('#next2').click ->
    $('.fieldset_Contact_Information').hide()
    $('.fieldset_Contact_Location').show()
    return
  return

