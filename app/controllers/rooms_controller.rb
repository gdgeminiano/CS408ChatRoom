# Rooms Controller coordinates interaction between user, views and model
# Inherits ApplicationController class
class RoomsController < ApplicationController
  # Devise Authentication: Only logged in users can create messages
  # Before accesing room, must be an authenticaed user
  before_action :authenticate_user!

  # Display/ show all messages
  def show
    @messages = Message.all
  end
end
