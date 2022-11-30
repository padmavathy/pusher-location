class Walk < ApplicationRecord
    before_create :set_uuid
    has_many :checkins # walk model's association with the checkins model
    
    # a method that creates a random uuid for each walk before its created
    def set_uuid
      self.uuid = SecureRandom.uuid
    end
    
    # a method that generates a custom JSON output for our walk objects
    def as_json(options={})
      super(
        only: [:id, :name, :uuid],
        include: { checkins: { only: [:lat, :lng, :walk_id] } }
      )
    end
end
