# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  # scroll messagees to the top
  $('#messages').scrollTop $('#messages').prop('scrollHeight')
  # Focus on input message box
  $('#message_input').focus()

$(document).on 'keypress', '#message_input', (e) ->
  # keyCode 13 = ENTER
  if e.keyCode == 13 and e.target.value
    # Send text in input box to action cable
    App.room.speak(e.target.value)
    # Reset input box
    e.target.value = ''
    # Cancel the default action, can't send empty message
    e.preventDefault()
