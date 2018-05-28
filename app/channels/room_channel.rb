# Encapsulates surface logic
class RoomChannel < ApplicationCable::Channel
  # Channel routes published content to subscribers (users) from "room_channel"
  def subscribed()
     stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    Message.create content: data['message'], user: current_user
  end
end
