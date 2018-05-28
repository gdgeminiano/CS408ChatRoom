# BroadcastMessageJob : background job processor
class BroadcastMessageJob < ApplicationJob
  queue_as :default

  def perform(message)
    # Do something later
    # Broadcast message to room channel
    ActionCable.server.broadcast 'room_channel', render_message(message)
  end

  # Render message outside application controller
  private
  def render_message(message)
    # View renderinng for background jobs (render HTML)
    ApplicationController.renderer.render message
  end
end
