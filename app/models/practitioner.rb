class Practitioner < ActiveRecord::Base
  has_paper_trail 
  resourcify
  belongs_to :practitioner_profession
  belongs_to :health_place
  has_many :sessions
end
