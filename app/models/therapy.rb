class Therapy < ActiveRecord::Base
  resourcify
  belongs_to :practitioner
  belongs_to :patient
end
