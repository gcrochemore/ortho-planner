class PatientsPathology < ActiveRecord::Base
  belongs_to :patient
  belongs_to :pathology
end
