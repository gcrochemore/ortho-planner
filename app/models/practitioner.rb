class Practitioner < ActiveRecord::Base
  has_paper_trail
  belongs_to :profession, class_name: 'PractitionerProfession', foreign_key: 'profession'
end
