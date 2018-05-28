# Rooms Controller coordinates interaction between user, views and model
# Inherits ApplicationController class
class RoomsController < ApplicationController
  before_action :authenticate_user!

  # Display/ show all messages
  def show
    @messages = Message.all
  end
end
