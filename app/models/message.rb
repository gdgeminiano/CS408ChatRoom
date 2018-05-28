class Message < ApplicationRecord
  # Each instance of a message belongs to a user
  belongs_to :user

  # Once message created and committed to database,
  # broadcast message to action cable in the background (perform_later)
  after_create_commit { BroadcastMessageJob.perform_later self  }
end
