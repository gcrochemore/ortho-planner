class Practitioner < ActiveRecord::Base
  belongs_to :profession, class_name: 'PractitionerProfession', foreign_key: 'profession'
end
