# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#jQuery ->
#  $('form').on 'click', '.remove_fields', (event) ->
#    $(this).prev('input[type=hidden]').val('1')
#    $(this).closest('fieldset').hide()
#    event.preventDefault()

ready = ->
  $('.DataTables').DataTable()

  return

jQuery ->
  $('form').on 'click', '.remove_fields', (event) ->
    if confirm('Are you sure? All Project Design Information related to this will also be deleted')
      # continue with delete
      $(this).prev('input[type=hidden]').val('1')
      $(this).closest('fieldset').hide()
      event.preventDefault()
    else


  $('form').on 'click', '.add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp, time))
    event.preventDefault()

$(document).ready(ready)
$(document).on('page:load', ready)