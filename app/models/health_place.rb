class HealthPlace < ActiveRecord::Base
  belongs_to :health_place_type

  def to_s
  	self.name
  end
end
