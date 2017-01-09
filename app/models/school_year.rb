class SchoolYear < ActiveRecord::Base

  def to_label
    "#{self.begin_date} - #{self.end_date}"
  end  

  def to_s
  	self.to_label
  end	
end
