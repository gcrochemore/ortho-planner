class Practitioner < ActiveRecord::Base
  has_paper_trail 
  resourcify
  belongs_to :practitioner_profession
  has_many :sessions
end
