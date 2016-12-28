class Practitioner < ActiveRecord::Base
  has_paper_trail 
  belongs_to :practitioner_profession
  has_many :sessions
end
