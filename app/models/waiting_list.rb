class WaitingList < ActiveRecord::Base
  belongs_to :patient
  belongs_to :office
  belongs_to :pathology
end
