class Absence < ActiveRecord::Base
  resourcify
  belongs_to :patient
end
