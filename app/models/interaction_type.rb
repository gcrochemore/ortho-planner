class InteractionType < ActiveRecord::Base
  resourcify

  def to_label
    self.name
  end  

  def to_s
  	self.to_label
  end	
end
