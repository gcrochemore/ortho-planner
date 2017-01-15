class WaitingList < ActiveRecord::Base
  has_paper_trail
  resourcify
  
  validates :start_date, presence: true

  belongs_to :patient
  belongs_to :health_place
  belongs_to :pathology
  accepts_nested_attributes_for :patient

  scope :waiting_list, -> { includes(:patient).where(end_date: nil).order('patients.priority DESC, start_date ASC') }

  scope :not_waiting_list, -> { includes(:patient).where('end_date IS NOT NULL').order('patients.priority DESC, end_date DESC') }

end
