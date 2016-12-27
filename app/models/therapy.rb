class Therapy < ActiveRecord::Base
  belongs_to :practitioner
  belongs_to :patient
end
