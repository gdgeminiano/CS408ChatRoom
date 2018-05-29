# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
# Connection class: authrorizes incoming connection
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user
    # Once user connected to action cable
    def connect
      # Set current user to logged in user
      self.current_user = logged_in_user
      # Add email/user to messages tag in rails console (Debugging purposes)
      logger.add_tags 'ActionCable', current_user.email
    end

    # Find user by ID and cookie
    protected
    def logged_in_user
      # If user matches
      if (current_user = User.find_by_id cookies.signed['user.id'])
        # Successful connection
        current_user
      else
        # Reject connection
        reject_unauthorized_connection
      end
    end

  end
end
