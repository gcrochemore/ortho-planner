class WaitingList < ActiveRecord::Base
  has_paper_trail
  resourcify
  
  validates :start_date, presence: true

  belongs_to :patient
  belongs_to :health_place
  belongs_to :pathology
  accepts_nested_attributes_for :patient

  default_scope { includes(:patient).where(end_date: nil).order('patients.priority DESC, start_date DESC') }

end
