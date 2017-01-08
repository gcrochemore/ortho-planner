class Practitioner < ActiveRecord::Base
  has_paper_trail 
  resourcify
  belongs_to :practitioner_profession
  belongs_to :health_place
  has_many :sessions
  default_scope { order(:last_name, :first_name) }

  def to_label
    "#{self.last_name} #{self.first_name} (#{self.practitioner_profession.name})"
  end  

  def to_s
  	self.to_label
  end	
end
