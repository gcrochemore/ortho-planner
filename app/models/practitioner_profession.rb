class PractitionerProfession < ActiveRecord::Base
  has_paper_trail
  resourcify
  has_many :practitioners
end
