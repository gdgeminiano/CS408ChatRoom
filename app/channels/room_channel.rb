# Backend: Used for Action Cable and websockets
# Inherits class ApplicationCable::Channel
class RoomChannel < ApplicationCable::Channel
  # Channel routes published content to subscribers (users) from "room_channel"
  def subscribed()
     stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # When speak is called
  def speak(data)
    # Create a new record(instance of the message object) to be added to database
    # Recording message content and user who sent it
    Message.create content: data['message'], user: current_user
  end
end
