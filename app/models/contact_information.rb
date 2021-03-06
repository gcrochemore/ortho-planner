class ContactInformation < ActiveRecord::Base
  belongs_to :contactable, polymorphic: true
  belongs_to :contact_information_type

  validates :value, presence: true
end
