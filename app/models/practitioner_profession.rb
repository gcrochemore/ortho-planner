class PractitionerProfession < ActiveRecord::Base
  has_paper_trail
  resourcify
  has_many :practitioners

  def to_s
  	self.name
  end
end
