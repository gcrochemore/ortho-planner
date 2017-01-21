class Therapy < ActiveRecord::Base
  resourcify
  belongs_to :practitioner
  belongs_to :patient
  belongs_to :health_place
  belongs_to :act
end
