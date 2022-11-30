class Checkin < ApplicationRecord
  belongs_to :walk
  after_create :notify_pusher
  
  # method to publish a user's current location
  def notify_pusher
    Pusher.trigger('location', 'new', self.walk.as_json)
  end
end
