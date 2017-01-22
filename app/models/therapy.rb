class Therapy < ActiveRecord::Base
  resourcify
  belongs_to :practitioner
  belongs_to :patient
  belongs_to :health_place
  belongs_to :act

  def to_s
  	"Rééducation de #{patient.first_name} #{patient.last_name}"
  end
end
