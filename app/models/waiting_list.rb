class WaitingList < ActiveRecord::Base
  belongs_to :patient
  belongs_to :office
  belongs_to :pathology
  accepts_nested_attributes_for :patient

  validates :pathology, presence: true
end
