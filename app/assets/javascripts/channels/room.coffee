# Front end for channel
App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    # When a message is recieved add it to the database of messages
    $('#messages').append data
    $('#messages').scrollTop $('#messages').prop('scrollHeight')

  speak: (message) ->
    # When calling App.room.speak('message') ,perform speak and set message to parameter 'message'
    @perform 'speak', message: message
