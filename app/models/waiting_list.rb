class WaitingList < ActiveRecord::Base
  has_paper_trail
  resourcify
  
  validates :start_date, presence: true

  belongs_to :patient
  belongs_to :health_place
  belongs_to :pathology
  accepts_nested_attributes_for :patient

  scope :waiting_list, -> { includes(:patient).where('end_date IS NULL AND (waiting_for_patient_return = ? OR waiting_for_patient_return IS NULL)', false).order('patients.priority DESC, start_date ASC') }

  scope :not_waiting_list, -> { includes(:patient).where('(waiting_for_patient_return = ? OR waiting_for_patient_return IS NULL) AND end_date IS NOT NULL', false).order('patients.priority DESC, end_date DESC') }

  scope :waiting_for_patient_return, -> { where(waiting_for_patient_return: true) }

  def age
    if self.start_date
      now = Time.now.utc.to_date
      (now.year * 12 + now.month) - (self.start_date.year * 12 + self.start_date.month)
    end
  end

end
