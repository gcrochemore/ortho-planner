class SchoolYear < ActiveRecord::Base

  def to_label
    "#{self.begin_date.strftime('%Y')} - #{self.end_date.strftime('%Y')}"
  end  

  def to_s
  	self.to_label
  end	
end
