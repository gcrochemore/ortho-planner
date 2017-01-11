class WaitingList < ActiveRecord::Base
  has_paper_trail
  resourcify

  belongs_to :patient
  belongs_to :health_place
  belongs_to :pathology
  accepts_nested_attributes_for :patient

  validates :pathology, presence: true
end
