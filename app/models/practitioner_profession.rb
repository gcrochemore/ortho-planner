class PractitionerProfession < ActiveRecord::Base
  has_paper_trail
  has_many :practitioner, class_name: 'Practitioner', primary_key: 'id', foreign_key: 'profession'
end
