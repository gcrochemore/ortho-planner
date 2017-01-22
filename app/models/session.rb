class Session < ActiveRecord::Base
  resourcify
  belongs_to :therapy
  belongs_to :patient
  belongs_to :act
  belongs_to :practitioner
  belongs_to :health_place

  default_scope { order(:begin_date) }

  def start_time
  	self.begin_date
  end
end
