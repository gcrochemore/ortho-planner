class PractitionerProfession < ActiveRecord::Base
  has_paper_trail
  has_many :practitioners
end
