class PatientsAct < ActiveRecord::Base
  belongs_to :patient
  belongs_to :act
end
