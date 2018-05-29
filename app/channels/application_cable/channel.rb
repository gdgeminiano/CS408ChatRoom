# Channel class: for shared logic amoung channels
# Only using 1 channel (room_channel) so we dont need to edit this
module ApplicationCable
  class Channel < ActionCable::Channel::Base
  end
end
