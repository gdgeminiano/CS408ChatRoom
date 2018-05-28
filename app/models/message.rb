class Message < ApplicationRecord
  belongs_to :user

  # Once message created and committed to database,
  # broadcast message to action cable in the backgrounf (perform_later)
  after_create_commit { BroadcastMessageJob.perform_later self  }
end
